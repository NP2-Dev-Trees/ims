.class Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;
.super Ljava/lang/Object;
.source "ImsSenderRxr.java"

# interfaces
.implements Lorg/codeaurora/ims/IImsRadioResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsSenderRxr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImsRadioResponse"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsSenderRxr;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsSenderRxr;)V
    .locals 0
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsSenderRxr;

    .line 3250
    iput-object p1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private sendImsReasonInfo(IILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "errorInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 3327
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mfindAndRemoveRequestFromList(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 3328
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 3329
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendImsReasonInfo rr is NULL for token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3330
    return-void

    .line 3332
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v0, Lorg/codeaurora/ims/IFRequest;->mRequest:I

    invoke-static {v2}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Response: errorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errorInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3334
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v1, v0, p2, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$msendResponse(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 3335
    return-void
.end method


# virtual methods
.method public exitSmsCallBackModeResponse(II)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 3637
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mfindAndRemoveRequestFromList(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 3638
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 3639
    const-string v1, "exitSmsCallBackModeResponse rr is NULL"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3640
    return-void

    .line 3642
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v2, 0x0

    invoke-static {v1, v0, p2, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$msendResponse(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 3643
    return-void
.end method

.method public onAddParticipantResponse(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 3535
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mremoveFromQueueAndSendResponse(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 3536
    return-void
.end method

.method public onAnswerResponse(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 3354
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mremoveFromQueueAndSendResponse(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 3355
    return-void
.end method

.method public onCancelModifyCallResponse(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 3491
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mremoveFromQueueAndSendResponse(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 3492
    return-void
.end method

.method public onCancelPendingUssdResponse(IILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "errorInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 3577
    invoke-direct {p0, p1, p2, p3}, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->sendImsReasonInfo(IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 3578
    return-void
.end method

.method public onConferenceResponse(IILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "errorInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 3394
    invoke-direct {p0, p1, p2, p3}, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->sendImsReasonInfo(IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 3395
    return-void
.end method

.method public onDeflectCallResponse(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 3540
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mremoveFromQueueAndSendResponse(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 3541
    return-void
.end method

.method public onDialResponse(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 3257
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mremoveFromQueueAndSendResponse(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 3258
    return-void
.end method

.method public onExitEmergencyCallbackModeResponse(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 3461
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mremoveFromQueueAndSendResponse(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 3462
    return-void
.end method

.method public onExplicitCallTransferResponse(IILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "errorInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 3502
    invoke-direct {p0, p1, p2, p3}, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->sendImsReasonInfo(IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 3503
    return-void
.end method

.method public onGetCallWaitingResponse(II[I)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "response"    # [I

    .line 3434
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mfindAndRemoveRequestFromList(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 3435
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 3436
    const-string v1, "onGetCallWaitingResponse rr is NULL"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3437
    return-void

    .line 3440
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v1, v0, p2, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$msendResponse(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 3441
    return-void
.end method

.method public onGetClipResponse(IILorg/codeaurora/ims/SuppService;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "clipProvisionStatus"    # Lorg/codeaurora/ims/SuppService;

    .line 3400
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mfindAndRemoveRequestFromList(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 3401
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 3402
    const-string v1, "onGetClipResponse rr is NULL"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3403
    return-void

    .line 3406
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v1, v0, p2, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$msendResponse(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 3407
    return-void
.end method

.method public onGetClirResponse(II[I)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "clirInfo"    # [I

    .line 3411
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mfindAndRemoveRequestFromList(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 3412
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 3413
    const-string v1, "onGetClirResponse rr is NULL"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3414
    return-void

    .line 3417
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v1, v0, p2, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$msendResponse(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 3418
    return-void
.end method

.method public onGetColrResponse(IILorg/codeaurora/ims/SuppService;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "colrInfo"    # Lorg/codeaurora/ims/SuppService;

    .line 3450
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mfindAndRemoveRequestFromList(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 3451
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 3452
    const-string v1, "onGetColrResponse rr is NULL"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3453
    return-void

    .line 3456
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v1, v0, p2, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$msendResponse(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 3457
    return-void
.end method

.method public onGetConfigResponse(IILjava/lang/Object;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "ret"    # Ljava/lang/Object;

    .line 3272
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mfindAndRemoveRequestFromList(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 3273
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 3274
    const-string v1, "onGetConfigResponse rr is NULL"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3275
    return-void

    .line 3278
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v1, v0, p2, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$msendResponse(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 3279
    return-void
.end method

.method public onGetImsSubConfigResponse(IILorg/codeaurora/ims/ImsSubConfigDetails;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "subConfigInfo"    # Lorg/codeaurora/ims/ImsSubConfigDetails;

    .line 3551
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mfindAndRemoveRequestFromList(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 3552
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 3553
    const-string v1, "onGetImsSubConfigResponse rr is NULL"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3554
    return-void

    .line 3557
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v1, v0, p2, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$msendResponse(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 3558
    return-void
.end method

.method public onGetRegistrationResponse(IILorg/codeaurora/ims/ImsRegistrationInfo;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "registration"    # Lorg/codeaurora/ims/ImsRegistrationInfo;

    .line 3365
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mfindAndRemoveRequestFromList(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 3366
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 3367
    const-string v1, "onGetRegistrationResponse rr is NULL"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3368
    return-void

    .line 3371
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v1, v0, p2, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$msendResponse(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 3372
    return-void
.end method

.method public onGetRtpErrorStatisticsResponse(IIJ)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "packetErrorCount"    # J

    .line 3525
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mfindAndRemoveRequestFromList(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 3526
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 3527
    const-string v1, "onGetRtpErrorStatisticsResponse rr is NULL"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3528
    return-void

    .line 3530
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v0, p2, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$msendResponse(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 3531
    return-void
.end method

.method public onGetRtpStatisticsResponse(IIJ)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "packetCount"    # J

    .line 3514
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mfindAndRemoveRequestFromList(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 3515
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 3516
    const-string v1, "onGetRtpStatisticsResponse rr is NULL"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3517
    return-void

    .line 3519
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v0, p2, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$msendResponse(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 3520
    return-void
.end method

.method public onHangupResponse(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 3349
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mremoveFromQueueAndSendResponse(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 3350
    return-void
.end method

.method public onHoldResponse(IILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "errorInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 3344
    invoke-direct {p0, p1, p2, p3}, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->sendImsReasonInfo(IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 3345
    return-void
.end method

.method public onModifyCallConfirmResponse(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 3496
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mremoveFromQueueAndSendResponse(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 3497
    return-void
.end method

.method public onModifyCallInitiateResponse(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 3486
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mremoveFromQueueAndSendResponse(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 3487
    return-void
.end method

.method public onQueryCallForwardStatusResponse(II[Lorg/codeaurora/ims/ImsCallForwardTimerInfo;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "timerInfo"    # [Lorg/codeaurora/ims/ImsCallForwardTimerInfo;

    .line 3423
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mfindAndRemoveRequestFromList(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 3424
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 3425
    const-string v1, "onQueryCallForwardStatusResponse rr is NULL"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3426
    return-void

    .line 3429
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v1, v0, p2, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$msendResponse(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 3430
    return-void
.end method

.method public onQueryMultiSimVoiceCapabilityResponse(III)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "voiceCapability"    # I

    .line 3627
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mfindAndRemoveRequestFromList(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 3628
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 3629
    const-string v1, "onQueryMultiSimVoiceCapabilityResponse rr is NULL"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3630
    return-void

    .line 3632
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v0, p2, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$msendResponse(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 3633
    return-void
.end method

.method public onQueryServiceStatusResponse(IILjava/util/List;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ServiceStatus;",
            ">;)V"
        }
    .end annotation

    .line 3295
    .local p3, "serviceStatusInfoList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/ServiceStatus;>;"
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mfindAndRemoveRequestFromList(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 3296
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 3297
    const-string v1, "onQueryServiceStatusResponse rr is NULL"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3298
    return-void

    .line 3301
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v1, v0, p2, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$msendResponse(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 3302
    return-void
.end method

.method public onQueryVirtualLineInfoResponse(ILjava/lang/String;Lorg/codeaurora/ims/VirtualLineInfo;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "msisdn"    # Ljava/lang/String;
    .param p3, "virtualLineInfo"    # Lorg/codeaurora/ims/VirtualLineInfo;

    .line 3593
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mfindAndRemoveRequestFromList(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 3594
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 3595
    const-string v1, "onQueryVirtualLineInfoResponse rr is NULL"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3596
    return-void

    .line 3598
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$msendResponse(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 3599
    return-void
.end method

.method public onRegisterMultiIdentityLinesResponse(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 3582
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mremoveFromQueueAndSendResponse(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 3583
    return-void
.end method

.method public onRequestRegistrationChangeResponse(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 3359
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mremoveFromQueueAndSendResponse(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 3360
    return-void
.end method

.method public onResumeResponse(IILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "errorInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 3339
    invoke-direct {p0, p1, p2, p3}, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->sendImsReasonInfo(IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 3340
    return-void
.end method

.method public onSendDtmfResponse(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 3466
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mremoveFromQueueAndSendResponse(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 3467
    return-void
.end method

.method public onSendGeolocationInfoResponse(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 3545
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mremoveFromQueueAndSendResponse(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 3546
    return-void
.end method

.method public onSendImsSmsResponse(ILorg/codeaurora/ims/sms/SmsResponse;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "response"    # Lorg/codeaurora/ims/sms/SmsResponse;

    .line 3262
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mfindAndRemoveRequestFromList(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 3263
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 3264
    const-string v1, "onSendImsSmsResponse rr is NULL"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3265
    return-void

    .line 3267
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$msendResponse(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 3268
    return-void
.end method

.method public onSendRttMessageResponse(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 3587
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mremoveFromQueueAndSendResponse(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 3588
    return-void
.end method

.method public onSendSipDtmfResponse(II)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 3567
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mfindAndRemoveRequestFromList(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 3568
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 3569
    const-string v1, "onSendSipDtmfResponse rr is NULL"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3570
    return-void

    .line 3572
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v2, 0x0

    invoke-static {v1, v0, p2, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$msendResponse(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 3573
    return-void
.end method

.method public onSendUssdResponse(IILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "errorInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 3562
    invoke-direct {p0, p1, p2, p3}, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->sendImsReasonInfo(IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 3563
    return-void
.end method

.method public onSendVosActionInfoResponse(II)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 3657
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mfindAndRemoveRequestFromList(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 3658
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 3659
    const-string v1, "onSendVosActionInfoResponse rr is NULL"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3660
    return-void

    .line 3662
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v2, 0x0

    invoke-static {v1, v0, p2, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$msendResponse(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 3663
    return-void
.end method

.method public onSendVosSupportStatusResponse(II)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 3647
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mfindAndRemoveRequestFromList(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 3648
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 3649
    const-string v1, "onSendVosSupportStatusResponse rr is NULL"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3650
    return-void

    .line 3652
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v2, 0x0

    invoke-static {v1, v0, p2, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$msendResponse(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 3653
    return-void
.end method

.method public onSetCallForwardStatusResponse(IILorg/codeaurora/ims/CallForwardStatusInfo;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "callForwardStatusInfo"    # Lorg/codeaurora/ims/CallForwardStatusInfo;

    .line 3604
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mfindAndRemoveRequestFromList(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 3605
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 3606
    const-string v1, "onSetCallForwardStatusResponse rr is NULL"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3607
    return-void

    .line 3610
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetCallForwardStatusResponse:: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3611
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v1, v0, p2, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$msendResponse(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 3612
    return-void
.end method

.method public onSetClirResponse(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 3445
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mremoveFromQueueAndSendResponse(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 3446
    return-void
.end method

.method public onSetConfigResponse(IILjava/lang/Object;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "ret"    # Ljava/lang/Object;

    .line 3283
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mfindAndRemoveRequestFromList(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 3284
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 3285
    const-string v1, "onSetConfigResponse rr is NULL"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3286
    return-void

    .line 3289
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v1, v0, p2, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$msendResponse(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 3290
    return-void
.end method

.method public onSetMediaConfigurationResponse(II)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 3616
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mfindAndRemoveRequestFromList(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 3617
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 3618
    const-string v1, "onSetMediaConfigurationResponse rr is NULL"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3619
    return-void

    .line 3621
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v2, 0x0

    invoke-static {v1, v0, p2, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$msendResponse(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 3622
    return-void
.end method

.method public onSetServiceStatusResponse(II)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 3306
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mfindAndRemoveRequestFromList(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 3307
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 3308
    const-string v1, "onSetServiceStatusResponse  rr is NULL"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3309
    return-void

    .line 3313
    :cond_0
    :try_start_0
    iget-object v1, v0, Lorg/codeaurora/ims/IFRequest;->mResult:Landroid/os/Message;

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/codeaurora/telephony/utils/SomeArgs;

    .line 3314
    .local v1, "setCapArgs":Lorg/codeaurora/telephony/utils/SomeArgs;
    iget-object v2, v1, Lorg/codeaurora/telephony/utils/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    .line 3319
    .local v2, "orgMsg":Landroid/os/Message;
    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/IFRequest;->setResult(Landroid/os/Message;)V

    .line 3320
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v4, v1, Lorg/codeaurora/telephony/utils/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    invoke-static {v3, v0, p2, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$msendResponse(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3323
    .end local v1    # "setCapArgs":Lorg/codeaurora/telephony/utils/SomeArgs;
    .end local v2    # "orgMsg":Landroid/os/Message;
    goto :goto_0

    .line 3321
    :catch_0
    move-exception v1

    .line 3322
    .local v1, "ex":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSetServiceStatusResponse exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3324
    .end local v1    # "ex":Ljava/lang/ClassCastException;
    :goto_0
    return-void
.end method

.method public onSetSuppServiceNotificationResponse(III)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "serviceStatusClass"    # I

    .line 3508
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mremoveFromQueueAndSendResponse(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 3509
    return-void
.end method

.method public onSetUiTTYModeResponse(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 3481
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mremoveFromQueueAndSendResponse(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 3482
    return-void
.end method

.method public onStartDtmfResponse(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 3471
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mremoveFromQueueAndSendResponse(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 3472
    return-void
.end method

.method public onStopDtmfResponse(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 3476
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mremoveFromQueueAndSendResponse(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 3477
    return-void
.end method

.method public onSuppServiceStatusResponse(IILorg/codeaurora/ims/SuppSvcResponse;)V
    .locals 4
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "suppSvcResponse"    # Lorg/codeaurora/ims/SuppSvcResponse;

    .line 3377
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mfindAndRemoveRequestFromList(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 3378
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 3379
    const-string v1, "onSuppServiceStatusResponse rr is NULL"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3380
    return-void

    .line 3383
    :cond_0
    iget v1, v0, Lorg/codeaurora/ims/IFRequest;->mRequest:I

    const/16 v2, 0x17

    if-ne v1, v2, :cond_1

    .line 3384
    new-instance v1, Lorg/codeaurora/ims/CallForwardStatusInfo;

    .line 3385
    invoke-virtual {p3}, Lorg/codeaurora/ims/SuppSvcResponse;->getErrorDetails()Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/codeaurora/ims/CallForwardStatusInfo;-><init>(Landroid/telephony/ims/ImsReasonInfo;[Lorg/codeaurora/ims/CallForwardStatus;)V

    .line 3386
    .local v1, "cfStatusInfo":Lorg/codeaurora/ims/CallForwardStatusInfo;
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v2, v0, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$msendResponse(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 3387
    .end local v1    # "cfStatusInfo":Lorg/codeaurora/ims/CallForwardStatusInfo;
    goto :goto_0

    .line 3388
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v1, v0, p2, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$msendResponse(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 3390
    :goto_0
    return-void
.end method
