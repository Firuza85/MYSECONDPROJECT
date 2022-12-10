public class employee {
private String name;
private Integer age;
    Private String designation;
    
    public Employee () {
        name ='Depika';
        age = 26;
        designation ='Software engineer';
    }
    
    Public Employee (String name, Integer age, String desi){
       this.name=name;
        this.age=age;
        this.designation=desi;
    }
    Public String getName(){
        return name;
    }
    
    Public Integer getAge(){
        return age;
    }
    Public String getDesignation(){
        return designation;
    }
}