package com.cdac.ArtRealm.utilities;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;

import org.springframework.stereotype.Component;

import com.cdac.ArtRealm.entity.Booking;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Element;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;

@Component
public class PDFgenerator {
	public void generateItinerary(Booking booking,String filePath) {
        try {
            Document document = new Document();
            PdfWriter.getInstance(document, new FileOutputStream(filePath));
            document.open();
            document.add(generateTable(booking));
           document.close();
        } catch (FileNotFoundException | DocumentException e) {
            e.printStackTrace();
        }
    }
  
 

private PdfPTable generateTable(Booking booking) {
	   PdfPTable table = new PdfPTable(2);
        PdfPCell cell;
        

        cell = new PdfPCell(new Phrase("Artists Itinerary"));
        cell.setHorizontalAlignment(Element.ALIGN_CENTER);
        cell.setColspan(2);
        table.addCell(cell);
        
        cell = new PdfPCell(new Phrase("Artists Detail"));
        cell.setHorizontalAlignment(Element.ALIGN_CENTER);
        cell.setColspan(2);
        table.addCell(cell);
        
        table.addCell("Type Of Artist");
        table.addCell(booking.getCategory().getTypeOfArtist());
        table.addCell("Description");
        table.addCell(booking.getCategory().getDescription());
        table.addCell("Available Date");
        table.addCell(booking.getCategory().getAvailableDate().toString());
        table.addCell("Current City");
        table.addCell(booking.getCategory().getCurrentCity());
        table.addCell("Current Status");
        table.addCell(booking.getCategory().getCurrentStatus());
        table.addCell("Charge");
        table.addCell(booking.getCategory().getCharge());
       

        cell = new PdfPCell(new Phrase("EventManager Detail"));
        cell.setHorizontalAlignment(Element.ALIGN_CENTER);
        cell.setColspan(2);
        table.addCell(cell);
        

        table.addCell("First Name");
        table.addCell(booking.getEventManager().getFirstName());
        table.addCell("Last Name");
        table.addCell(booking.getEventManager().getLastName());
        table.addCell("Middle Name");
        table.addCell(booking.getEventManager().getMiddleName());
        table.addCell("Email Id");
        table.addCell(booking.getEventManager().getEmailId());
        table.addCell("Phone ");
        table.addCell(booking.getEventManager().getPhone());
        
        
       return table;

}
	
	}

