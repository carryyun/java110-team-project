package bitcamp.java110.cms.domain;

import java.util.List;

public class Mentor extends Mentee{
  
  protected int carr;
  protected List<MentorFile> mentorFile;
  protected List<MentorLicense> mentorLicense;
  protected List<BigTag> mentorTag;

  
  public List<BigTag> getMentorTag() {
    return mentorTag;
  }
  public void setMentorTag(List<BigTag> mentorTag) {
    this.mentorTag = mentorTag;
  }
  public int getCarr() {
    return carr;
  }
  public void setCarr(int carr) {
    this.carr = carr;
  }
  public List<MentorFile> getMentorFile() {
    return mentorFile;
  }
  public void setMentorFile(List<MentorFile> mentorFile) {
    this.mentorFile = mentorFile;
  }
  public List<MentorLicense> getMentorLicense() {
    return mentorLicense;
  }
  public void setMentorLicense(List<MentorLicense> mentorLicense) {
    this.mentorLicense = mentorLicense;
  }
  @Override
  public String toString() {
    return "Mentor [carr=" + carr + ", mentorFile=" + mentorFile + ", mentorLicense="
        + mentorLicense + "]";
  }
  
  
}
