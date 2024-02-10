.class Lorg/codeaurora/ims/ImsConferenceController$ImsConferenceControllerHandler;
.super Landroid/os/Handler;
.source "ImsConferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsConferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsConferenceControllerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsConferenceController;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsConferenceController;)V
    .locals 1

    .line 500
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConferenceController$ImsConferenceControllerHandler;-><init>(Lorg/codeaurora/ims/ImsConferenceController;Landroid/os/Looper;)V

    .line 501
    return-void
.end method

.method constructor <init>(Lorg/codeaurora/ims/ImsConferenceController;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 503
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConferenceController$ImsConferenceControllerHandler;->this$0:Lorg/codeaurora/ims/ImsConferenceController;

    .line 504
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 505
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 509
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController$ImsConferenceControllerHandler;->this$0:Lorg/codeaurora/ims/ImsConferenceController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message received: what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsConferenceController;->-$$Nest$mlogi(Lorg/codeaurora/ims/ImsConferenceController;Ljava/lang/String;)V

    .line 512
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 533
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController$ImsConferenceControllerHandler;->this$0:Lorg/codeaurora/ims/ImsConferenceController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsConferenceController;->-$$Nest$mlogi(Lorg/codeaurora/ims/ImsConferenceController;Ljava/lang/String;)V

    goto :goto_0

    .line 529
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 530
    .local v0, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConferenceController$ImsConferenceControllerHandler;->this$0:Lorg/codeaurora/ims/ImsConferenceController;

    invoke-static {v1, v0}, Lorg/codeaurora/ims/ImsConferenceController;->-$$Nest$mhandleHangupResponse(Lorg/codeaurora/ims/ImsConferenceController;Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 531
    goto :goto_0

    .line 525
    .end local v0    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 526
    .restart local v0    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConferenceController$ImsConferenceControllerHandler;->this$0:Lorg/codeaurora/ims/ImsConferenceController;

    invoke-static {v1, v0}, Lorg/codeaurora/ims/ImsConferenceController;->-$$Nest$mhandleResumeResponse(Lorg/codeaurora/ims/ImsConferenceController;Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 527
    goto :goto_0

    .line 522
    .end local v0    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    :pswitch_2
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController$ImsConferenceControllerHandler;->this$0:Lorg/codeaurora/ims/ImsConferenceController;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsConferenceController;->-$$Nest$mhandleConferenceCompleted(Lorg/codeaurora/ims/ImsConferenceController;)V

    .line 523
    goto :goto_0

    .line 518
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 519
    .restart local v0    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConferenceController$ImsConferenceControllerHandler;->this$0:Lorg/codeaurora/ims/ImsConferenceController;

    invoke-virtual {v1, v0}, Lorg/codeaurora/ims/ImsConferenceController;->handleRefreshConfInfo(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 520
    goto :goto_0

    .line 514
    .end local v0    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 515
    .restart local v0    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConferenceController$ImsConferenceControllerHandler;->this$0:Lorg/codeaurora/ims/ImsConferenceController;

    invoke-static {v1, v0}, Lorg/codeaurora/ims/ImsConferenceController;->-$$Nest$mhandleConferenceResponse(Lorg/codeaurora/ims/ImsConferenceController;Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 516
    nop

    .line 535
    .end local v0    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
