package grails

import org.springframework.web.multipart.MultipartFile
import grails.web.context.ServletContextHolder

class UploadService {

    boolean transactional = true

    String uploadFile(MultipartFile file, String name, String destinationDirectory) {

        def servletContext = ServletContextHolder.servletContext
        def storagePath = servletContext.getRealPath(destinationDirectory)
        def var_path = 'C:\\Users\\Matthieu\\Desktop\\DESKTOP\\ESTIA - BIHAR\\Web Avancé\\TP_Web_Avancé\\grails-app\\assets\\images'

        // Create storage path directory if it does not exist

        // Create storage path directory if it does not exist
        /*  def storagePathDirectory = new File(storagePath)
          if (!storagePathDirectory.exists()) {
              print "CREATING DIRECTORY ${storagePath}: "
              if (storagePathDirectory.mkdirs()) {
                  println "SUCCESS"
              } else {
                  println "FAILED"
              }
          }*/

        // Store file
        if (!file.isEmpty()) {
            file.transferTo(new File("${var_path}/${name}"))
            println "Saved file: ${var_path}/${name}"
            return "${var_path}/${name}"

        } else {
            println "File ${file.inspect()} was empty!"
            return null
        }
    }
}