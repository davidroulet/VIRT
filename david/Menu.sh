PS3="Select the operation: "

select opt in create shutdown Start nuke CreateTeamplate quit; do

  case $opt in
    create)
     read -p "How many instance do you need? " n1
     bash ./Script/LXC_Create.sh $n1
     break
      ;;
    shutdown)
     bash ./Script/LXC_Shutdown_Faster.sh $n1
     break
      ;;
    Start)
        bash ./Script/LXC_Start_Faster.sh $n1
        break
      ;;
    nuke)
     bash ./Script/LXC_Nuke.sh $n1
     break
      ;;
    CreateTeamplate)
      bash ./Script/LXC_CreateTemplate.sh
      ;;
    quit)
      break
      ;;
    *) 
      echo "Invalid option $REPLY"
      ;;
  esac
done
