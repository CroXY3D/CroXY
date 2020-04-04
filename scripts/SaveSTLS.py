#Author-
#Description-Fusion360 Script saves all bodies with 'STL:' as first letters of their name

import adsk.core, adsk.fusion, traceback
import os.path, sys
import re


bodyDict = {}

def saveBodies(occ, exportMgr):
    scriptDir = '/Users/wesc/Documents/3D Printing/CruXY/STLs' 
    app = adsk.core.Application.get()
    ui  = app.userInterface
    allBodies = occ.bRepBodies
    for body in allBodies:
        bodyGroup = re.search('STL:(.+)', body.name)
        if (bodyGroup != None):
            bodyName = bodyGroup.group(1)
            fileName = scriptDir + "/" +  bodyName
            bodyDict[fileName] = body



def run(context):
    ui = None
    #bodyDict = Dict()
    try:
        app = adsk.core.Application.get()
        ui  = app.userInterface
           
        # get active design        
        product = app.activeProduct
        design = adsk.fusion.Design.cast(product)
        
        # get root component in this design
        rootComp = design.rootComponent
        
        # create a single exportManager instance
        exportMgr = design.exportManager
        
        # export the root component to printer utility
        stlRootOptions = exportMgr.createSTLExportOptions(rootComp)

        # get all available print utilities
        printUtils = stlRootOptions.availablePrintUtilities
         
        saveBodies(rootComp, exportMgr)
        allOccu = rootComp.allOccurrences
        for occ in allOccu:
            #if occ.isReferencedComponent:
            #    #
            #else:
            #if not occ.isReferencedComponent:
            saveBodies(occ, exportMgr) 
        for fileName in bodyDict:
            ui.messageBox(fileName, fileName)
        
            stlExportOptions = exportMgr.createSTLExportOptions(bodyDict[fileName], fileName)
            stlExportOptions.sendToPrintUtility = False
            
            exportMgr.execute(stlExportOptions)    

    except:
        if ui:
            ui.messageBox('Failed:\n{}'.format(traceback.format_exc()))
 
        

                 