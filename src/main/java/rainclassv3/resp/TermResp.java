package rainclassv3.resp;

import lombok.Data;

/**
 * @创建人 wulinfeng
 * @创建时间 2022/2/25
 */
@Data
public class TermResp {
    String term;
    String termStartDate;
    String termEndDate;
    String chooseStartDate;
    String chooseEndtDate;
}
