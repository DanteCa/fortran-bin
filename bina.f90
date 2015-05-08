        program lectura
        integer ih, jh
        character*32 nombre, salida
        
        write(*,'(A)',advance='NO') 'Escribir el nombre del archivo de entrada (incluya la extencion): '
        read(*,*) nombre
        open(2, file=nombre, status='old', err=99, iostat=ioerr)			
        write(*,'(A)',advance='NO') 'Escribir el nombre del archivo de salida (elegir extentcion tipo .dat o .bin): '
        read(*,*) salida
        open(3, file=salida, status='unknown', access='stream', form='unformatted')

        write(*,*) 'Escribir los parametros de la grilla'
   	    write(*,'(A)',advance='NO') 'Numero de filas: '
        read(*,*) ih
        write(*,'(A)',advance='NO') 'Numero de columnas: '
        read(*,*) jh

        call grilla(ih,jh)
		
 99     if(ioerr==0) then	
		    write(*,*) 'Terminado, se creo el archivo -> ',salida
		    write(*,*) 'Presione enter para finalizar la aplicacion'
		    read(*,*)  
        else if(ioerr>0) then
		    write(*,*) 'ERROR! El archivo no existe'
		    write(*,*) 'Presione enter para finalizar la aplicacion'
		    read(*,*) 		
        end if
        end program
        
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!!!!!SUBRUTINA PARA LEER Y ESCRIBIR LA INFORMACION GRILLADA!!!!!!!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
        subroutine grilla(row,col)
        integer row, col
        real dat(row,col)
        read(2,*) ((dat(i,j),j=1,col),i=1,row)
        write(3) ((dat(i,j),j=1,col),i=1,row)
!        write(4,*) ((dat(i,j),j=1,row),i=1,col)
        return
        end