<?php defined('IN_IA') or exit('Access Denied');?><div class="resume_step">
    <div class="resume_stepbox">
            <a href="" class="resume_step_circular">
                <div class="resume_step_circular1 resume_step_ready">
                    <?php  if($resume['fullname']) { ?>
                        <svg class="icon icon_right" aria-hidden="true" style="color: #fff">
                            <use xlink:href="#icon-zhengque1"></use>
                        </svg>
                    <?php  } else { ?>
                    <span>1</span>
                    <?php  } ?>
                </div>
            </a>
        <p>基本信息</p>
    </div>
    <div class="resume_stepbox">
            <a href="" class="resume_step_circular">
                <div class="resume_step_circular1 <?php  if($resume['fullname']) { ?>resume_step_ready<?php  } else { ?>resume_step_no<?php  } ?>">
                    <?php  if($resume['edu_experience']) { ?>
                        <svg class="icon icon_right" aria-hidden="true" style="color: #fff">
                            <use xlink:href="#icon-zhengque1"></use>
                        </svg>
                    <?php  } else { ?>
                     <span>2</span>
                    <?php  } ?>
                </div>
            </a>
        <p>教育经历</p>
    </div>
    <div class="resume_stepbox">
            <a href="" class="resume_step_circular">
                <div class="resume_step_circular1 <?php  if($resume['edu_experience']) { ?>resume_step_ready<?php  } else { ?>resume_step_no<?php  } ?>">
                    <?php  if($resume['work_experience']) { ?>
                    <svg class="icon icon_right" aria-hidden="true" style="color: #fff">
                        <use xlink:href="#icon-zhengque1"></use>
                    </svg>
                    <?php  } else { ?>
                    <span>3</span>
                    <?php  } ?>
                </div>
            </a>
        <p>工作经历</p>
    </div>
    <div class="resume_stepbox">
            <a href="" class="resume_step_circular">
                <div class="resume_step_circular1 <?php  if($resume['work_experience']) { ?>resume_step_ready<?php  } else { ?>resume_step_no<?php  } ?>">
                    <?php  if($resume['introduce']) { ?>
                    <svg class="icon icon_right" aria-hidden="true" style="color: #fff">
                        <use xlink:href="#icon-zhengque1"></use>
                    </svg>
                    <?php  } else { ?>
                    <span>4</span>
                    <?php  } ?>
                </div>
            </a>
        <p>一句话介绍</p>
    </div>
</div>

