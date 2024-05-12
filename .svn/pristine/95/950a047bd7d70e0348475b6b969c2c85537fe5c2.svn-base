package kr.or.ddit.users.vo;

import java.io.Serializable;
import java.time.LocalDateTime;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

import kr.or.ddit.validate.grouphint.DeleteGroup;
import kr.or.ddit.validate.grouphint.UpdateGroup;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

@Data
@EqualsAndHashCode(of = "qstnNo")
public class QnAVO implements Serializable{

	@NotNull(groups = {UpdateGroup.class, DeleteGroup.class})
	private String qstnNo;
	private String memId;
	@NotBlank
	private String qstnTitle;
	@ToString.Exclude
	private String qstnContent;
	private LocalDateTime qstnDate;
	private String qstnReply;
	
}
