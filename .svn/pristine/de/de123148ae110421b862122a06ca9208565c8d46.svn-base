package kr.or.ddit.users.vo;

import java.io.File;
import java.io.IOException;
import java.io.Serializable;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

@Data
@EqualsAndHashCode(of = "qstnattNo")
@NoArgsConstructor
public class QnAAttatchVO implements Serializable{
	private MultipartFile qnaFile;
	public QnAAttatchVO(MultipartFile qnaFile) {
		super();
		this.qnaFile = qnaFile;
		this.qstnattOriginalnm = qnaFile.getOriginalFilename();
		this.qstnattMime = qnaFile.getContentType();
		this.qstnattFilesize = qnaFile.getSize();
		this.qstnattSavename = UUID.randomUUID().toString();
	}

	private Integer qstnattNo;
	private String qstnNo;
	private String qstnattOriginalnm;
	private String qstnattSavename;
	private long qstnattFilesize;
	private String qstnattMime;
	private Integer qstnattFileorder;
	
	public void saveTo(File saveFolder) throws IllegalStateException, IOException {
		if(qnaFile!=null)
			qnaFile.transferTo(new File(saveFolder, qstnattSavename));
	}
}
