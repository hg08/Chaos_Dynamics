      PROGRAM one_dimension_map
      ! Aim: to plot the phase space of a dynamical system
      ! Date      Developer        Version
      !======    ===========      =========
      ! 2020-2-19 Gang Huang       1.0
      INTEGER, PARAMETER :: rk = 4
      INTEGER, PARAMETER :: nmovie = 800
      INTEGER, PARAMETER :: steps = 200000 
      REAL(KIND=rk),PARAMETER :: x0 = 0.3 ! The initial value of x0 will not change the result, ie., the x-mu plot 

      REAL(KIND=rk),ALLOCATABLE,DIMENSION(:,:) :: x
      REAL(KIND=rk) :: mu
      REAL(KIND=rk) :: delta_t 
      INTEGER :: i
      CHARACTER(LEN=50) :: filename


      ! Initialization
      i = 0
      filename = 'trajectory_x_s2.dat'
      ALLOCATE(x(steps,nmovie))
      ! Calculation
      delta_t = 2./steps
      x = 0
      
      DO j = 176000, 186000
          mu = j*(2.0/steps)
          x(j,1) = x0 
          DO i = 1, nmovie-1
              x(j,i+1) = 1-mu*x(j,i)*x(j,i)
          ENDDO
      ENDDO
      !======================
      !Write the correlation
      !C_HB(t)
      !======================
      open(10,file=trim(filename))
          DO j = 176000,186000 
              mu = j*(2.0/steps)
              do i=300, nmovie
                  write(10,*)(i-1),mu,x(j,i)
              enddo
          ENDDO
      write(6,*)'written in '//trim(filename)
      close(10)
      
      !Deallocate arrays
      DEALLOCATE(x)
      END PROGRAM one_dimension_map
