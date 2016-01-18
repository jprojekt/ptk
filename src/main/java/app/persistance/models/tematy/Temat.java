package app.persistance.models.tematy;

import javax.persistence.*;

@Entity
@Table(name="subject")
public class Temat {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="id")
    private Integer id;

    @Column(name="tytul")
    private String tytul;

    @Column(name="opis", length = 1000)
    private String opis;

    @Column(name="stopien")
    private String stopien;

    public Temat() {
    }

    public Temat(String tytul, String opis, String stopien) {
        this.tytul = tytul;
        this.opis = opis;
        this.stopien = stopien;
    }

    public String getTytul() {
        return tytul;
    }

    public void setTytul(String tytul) {
        this.tytul = tytul;
    }

    public String getOpis() {
        return opis;
    }

    public void setOpis(String opis) {
        this.opis = opis;
    }

    public String getStopien() {
        return stopien;
    }

    public void setStopien(String stopien) {
        this.stopien = stopien;
    }
}
