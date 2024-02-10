.class public Lcom/qualcomm/ims/vt/CameraController;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;
.implements Lorg/codeaurora/ims/QImsSessionBase$Listener;
.implements Lcom/qualcomm/ims/vt/Camera$Listener;
.implements Lcom/qualcomm/ims/vt/ImsMedia$MediaStateListener;


# static fields
.field private static TAG:Ljava/lang/String;

.field private static mIsRecordingStarted:Z

.field private static sInstance:Lcom/qualcomm/ims/vt/CameraController;


# instance fields
.field private mCamera:Lcom/qualcomm/ims/vt/Camera;

.field private mCameraConfigIms:Lcom/qualcomm/ims/vt/Camera$ConfigIms;

.field private mCameraOwner:Lorg/codeaurora/ims/ImsCallSessionImpl;

.field private mContext:Landroid/content/Context;

.field private mIsRecordingEnabled:Z

.field private mMedia:Lcom/qualcomm/ims/vt/ImsMedia;

.field private mPreviewSurface:Landroid/view/Surface;

.field private mRecorderFrameRate:I

.field private mRecordingSurface:Landroid/view/Surface;

.field private mStartRecordingSurface:Landroid/view/Surface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-string v0, "CameraController"

    sput-object v0, Lcom/qualcomm/ims/vt/CameraController;->TAG:Ljava/lang/String;

    .line 41
    const/4 v0, 0x0

    sput-boolean v0, Lcom/qualcomm/ims/vt/CameraController;->mIsRecordingStarted:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/qualcomm/ims/vt/ImsMedia;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "media"    # Lcom/qualcomm/ims/vt/ImsMedia;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mIsRecordingEnabled:Z

    .line 48
    new-instance v0, Lcom/qualcomm/ims/vt/Camera$ConfigIms;

    const/16 v1, 0x14

    const/4 v2, 0x2

    const/16 v3, 0xf0

    const/16 v4, 0x140

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/qualcomm/ims/vt/Camera$ConfigIms;-><init>(IIII)V

    iput-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mCameraConfigIms:Lcom/qualcomm/ims/vt/Camera$ConfigIms;

    .line 51
    invoke-virtual {v0}, Lcom/qualcomm/ims/vt/Camera$ConfigIms;->getFps()I

    move-result v0

    iput v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mRecorderFrameRate:I

    .line 56
    iput-object p1, p0, Lcom/qualcomm/ims/vt/CameraController;->mContext:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcom/qualcomm/ims/vt/CameraController;->mMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    .line 58
    invoke-virtual {p2, p0}, Lcom/qualcomm/ims/vt/ImsMedia;->addCameraListener(Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;)V

    .line 59
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    invoke-virtual {v0, p0}, Lcom/qualcomm/ims/vt/ImsMedia;->addMediaStateListener(Lcom/qualcomm/ims/vt/ImsMedia$MediaStateListener;)V

    .line 60
    invoke-static {p1}, Lcom/qualcomm/ims/vt/CameraManager;->init(Landroid/content/Context;)V

    .line 61
    return-void
.end method

.method private checkMediaId(Ljava/lang/String;I)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "mediaId"    # I

    .line 564
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mCameraOwner:Lorg/codeaurora/ims/ImsCallSessionImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getMediaId()I

    move-result v0

    if-eq v0, p2, :cond_0

    .line 565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mediaId mismatch with mCameraOwner"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 567
    :cond_0
    return-void
.end method

.method private closeCamera()V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0}, Lcom/qualcomm/ims/vt/Camera;->close()V

    .line 110
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    .line 111
    return-void
.end method

.method private doClose(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 2
    .param p1, "session"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doClose: Camera="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/ims/vt/CameraController;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/CameraController;->getSessionInfo(Lorg/codeaurora/ims/ImsCallSessionImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 328
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/CameraController;->removeOwner(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    .line 330
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mCameraOwner:Lorg/codeaurora/ims/ImsCallSessionImpl;

    if-nez v0, :cond_0

    .line 331
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/CameraController;->closeCamera()V

    .line 332
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mPreviewSurface:Landroid/view/Surface;

    goto :goto_0

    .line 334
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doClose: Not closing camera="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/ims/vt/CameraController;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " another session still requires it, session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/ims/vt/CameraController;->mCameraOwner:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 336
    invoke-direct {p0, v1}, Lcom/qualcomm/ims/vt/CameraController;->getSessionInfo(Lorg/codeaurora/ims/ImsCallSessionImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 334
    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 338
    :goto_0
    return-void
.end method

.method private doOpen(Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 5
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "session"    # Lorg/codeaurora/ims/ImsCallSessionImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doOpen mCamera ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/ims/vt/CameraController;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cameraId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 78
    invoke-direct {p0, p2}, Lcom/qualcomm/ims/vt/CameraController;->getSessionInfo(Lorg/codeaurora/ims/ImsCallSessionImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/CameraController;->releaseCurrentOwner()V

    .line 81
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/qualcomm/ims/vt/Camera;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/CameraController;->closeCamera()V

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 86
    .local v0, "reOpen":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 87
    invoke-static {p1, p0}, Lcom/qualcomm/ims/vt/CameraManager;->open(Ljava/lang/String;Lcom/qualcomm/ims/vt/Camera$Listener;)Lcom/qualcomm/ims/vt/Camera;

    move-result-object v3

    iput-object v3, p0, Lcom/qualcomm/ims/vt/CameraController;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    .line 90
    :cond_2
    invoke-direct {p0, p2}, Lcom/qualcomm/ims/vt/CameraController;->setOwner(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    .line 92
    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/qualcomm/ims/vt/CameraController;->mCameraConfigIms:Lcom/qualcomm/ims/vt/Camera$ConfigIms;

    if-eqz v3, :cond_3

    .line 93
    iget-object v4, p0, Lcom/qualcomm/ims/vt/CameraController;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    invoke-virtual {v4, v3}, Lcom/qualcomm/ims/vt/Camera;->reconfigure(Lcom/qualcomm/ims/vt/Camera$ConfigIms;)V

    .line 94
    iget-object v3, p0, Lcom/qualcomm/ims/vt/CameraController;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    iget v4, p0, Lcom/qualcomm/ims/vt/CameraController;->mRecorderFrameRate:I

    invoke-virtual {v3, v4}, Lcom/qualcomm/ims/vt/Camera;->setRecorderFrameRate(I)V

    .line 97
    :cond_3
    iget-object v3, p0, Lcom/qualcomm/ims/vt/CameraController;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    invoke-virtual {v3}, Lcom/qualcomm/ims/vt/Camera;->getSensorOrientation()I

    move-result v3

    .line 98
    .local v3, "mountAngle":I
    iget-object v4, p0, Lcom/qualcomm/ims/vt/CameraController;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    invoke-virtual {v4}, Lcom/qualcomm/ims/vt/Camera;->isFacingFront()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 99
    goto :goto_1

    :cond_4
    move v1, v2

    .line 100
    .local v1, "cameraFacing":I
    :goto_1
    iget-object v2, p0, Lcom/qualcomm/ims/vt/CameraController;->mMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    invoke-virtual {v2, v1, v3}, Lcom/qualcomm/ims/vt/ImsMedia;->setCameraInfo(II)V

    .line 101
    return-void
.end method

.method public static getInstance()Lcom/qualcomm/ims/vt/CameraController;
    .locals 2

    .line 140
    sget-object v0, Lcom/qualcomm/ims/vt/CameraController;->sInstance:Lcom/qualcomm/ims/vt/CameraController;

    if-eqz v0, :cond_0

    .line 141
    return-object v0

    .line 143
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "CameraController: Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getPreviewSize()Landroid/util/Size;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    invoke-virtual {v0}, Lcom/qualcomm/ims/vt/Camera;->getSensorOrientation()I

    move-result v0

    .line 243
    .local v0, "mountAngle":I
    iget-object v1, p0, Lcom/qualcomm/ims/vt/CameraController;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    invoke-virtual {v1}, Lcom/qualcomm/ims/vt/Camera;->getPreviewSize()Landroid/util/Size;

    move-result-object v1

    .line 244
    .local v1, "previewSize":Landroid/util/Size;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPreviewSize mountAngle = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " previewSize = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v2

    .line 246
    .local v2, "width":I
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v3

    .line 247
    .local v3, "height":I
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v5

    if-ge v4, v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 248
    .local v4, "isPortrait":Z
    :goto_0
    if-nez v4, :cond_1

    rem-int/lit16 v5, v0, 0xb4

    if-eqz v5, :cond_1

    .line 251
    new-instance v5, Landroid/util/Size;

    invoke-direct {v5, v3, v2}, Landroid/util/Size;-><init>(II)V

    move-object v1, v5

    goto :goto_1

    .line 252
    :cond_1
    if-eqz v4, :cond_2

    rem-int/lit16 v5, v0, 0xb4

    if-nez v5, :cond_2

    .line 255
    new-instance v5, Landroid/util/Size;

    invoke-direct {v5, v2, v3}, Landroid/util/Size;-><init>(II)V

    move-object v1, v5

    goto :goto_1

    .line 256
    :cond_2
    if-eqz v4, :cond_3

    .line 258
    new-instance v5, Landroid/util/Size;

    invoke-direct {v5, v3, v2}, Landroid/util/Size;-><init>(II)V

    move-object v1, v5

    goto :goto_1

    .line 259
    :cond_3
    if-nez v4, :cond_4

    .line 261
    new-instance v5, Landroid/util/Size;

    invoke-direct {v5, v2, v3}, Landroid/util/Size;-><init>(II)V

    move-object v1, v5

    .line 263
    :cond_4
    :goto_1
    return-object v1
.end method

.method private getSessionInfo(Lorg/codeaurora/ims/ImsCallSessionImpl;)Ljava/lang/String;
    .locals 1
    .param p1, "session"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 506
    if-nez p1, :cond_0

    .line 507
    const/4 v0, 0x0

    return-object v0

    .line 509
    :cond_0
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->toSimpleString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;Lcom/qualcomm/ims/vt/ImsMedia;)Lcom/qualcomm/ims/vt/CameraController;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "media"    # Lcom/qualcomm/ims/vt/ImsMedia;

    .line 119
    sget-object v0, Lcom/qualcomm/ims/vt/CameraController;->sInstance:Lcom/qualcomm/ims/vt/CameraController;

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Lcom/qualcomm/ims/vt/CameraController;

    invoke-direct {v0, p0, p1}, Lcom/qualcomm/ims/vt/CameraController;-><init>(Landroid/content/Context;Lcom/qualcomm/ims/vt/ImsMedia;)V

    sput-object v0, Lcom/qualcomm/ims/vt/CameraController;->sInstance:Lcom/qualcomm/ims/vt/CameraController;

    .line 124
    return-object v0

    .line 122
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "CameraController: Multiple initialization"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private releaseCurrentOwner()V
    .locals 2

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "releaseCurrentOwner: Session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/ims/vt/CameraController;->mCameraOwner:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-direct {p0, v1}, Lcom/qualcomm/ims/vt/CameraController;->getSessionInfo(Lorg/codeaurora/ims/ImsCallSessionImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mCameraOwner:Lorg/codeaurora/ims/ImsCallSessionImpl;

    if-eqz v0, :cond_0

    .line 320
    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->removeListener(Lorg/codeaurora/ims/QImsSessionBase$Listener;)V

    .line 321
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mCameraOwner:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 323
    :cond_0
    return-void
.end method

.method private removeOwner(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 2
    .param p1, "session"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeOwner: Session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/CameraController;->getSessionInfo(Lorg/codeaurora/ims/ImsCallSessionImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 304
    invoke-virtual {p0, p1}, Lcom/qualcomm/ims/vt/CameraController;->isOwner(Lorg/codeaurora/ims/ImsCallSessionImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/CameraController;->releaseCurrentOwner()V

    goto :goto_0

    .line 307
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeOwner: The session is not the correct owner. cameraOwner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 308
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/CameraController;->getSessionInfo(Lorg/codeaurora/ims/ImsCallSessionImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 307
    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 310
    :goto_0
    return-void
.end method

.method private sendCameraCapabilities()V
    .locals 4

    .line 489
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/CameraController;->getCameraCapabilities()Landroid/telecom/VideoProfile$CameraCapabilities;

    move-result-object v0

    .line 490
    .local v0, "cc":Landroid/telecom/VideoProfile$CameraCapabilities;
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/qualcomm/ims/vt/CameraController;->mCameraOwner:Lorg/codeaurora/ims/ImsCallSessionImpl;

    if-nez v1, :cond_0

    goto :goto_0

    .line 495
    :cond_0
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getImsVideoCallProviderImpl()Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    move-result-object v1

    .line 496
    .local v1, "provider":Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;
    if-nez v1, :cond_1

    .line 497
    const-string v2, "sendCameraCapabilities: ImsVideoCallProvider is not available (null)."

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 498
    return-void

    .line 501
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendCameraCapabilities: New capabilities= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 502
    invoke-virtual {v1, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->changeCameraCapabilities(Landroid/telecom/VideoProfile$CameraCapabilities;)V

    .line 503
    return-void

    .line 491
    .end local v1    # "provider":Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;
    :cond_2
    :goto_0
    const-string v1, "sendCameraCapabilities: Camera capabilities or camera owner is null"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 492
    return-void
.end method

.method private sendCameraStatus(I)V
    .locals 1
    .param p1, "error"    # I

    .line 529
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mCameraOwner:Lorg/codeaurora/ims/ImsCallSessionImpl;

    if-eqz v0, :cond_0

    .line 530
    invoke-direct {p0, v0, p1}, Lcom/qualcomm/ims/vt/CameraController;->sendCameraStatus(Lorg/codeaurora/ims/ImsCallSessionImpl;I)V

    .line 532
    :cond_0
    return-void
.end method

.method private sendCameraStatus(Lorg/codeaurora/ims/ImsCallSessionImpl;I)V
    .locals 3
    .param p1, "session"    # Lorg/codeaurora/ims/ImsCallSessionImpl;
    .param p2, "error"    # I

    .line 513
    if-nez p1, :cond_0

    .line 514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendCameraStatus: session is null. CameraStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 515
    return-void

    .line 518
    :cond_0
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getImsVideoCallProviderImpl()Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    move-result-object v0

    .line 519
    .local v0, "provider":Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;
    if-nez v0, :cond_1

    .line 520
    const-string v1, "sendCameraStatus: ImsVideoCallProvider is not available (null)."

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 521
    return-void

    .line 524
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendCameraStatus: Notifying Session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 525
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->sendCameraStatus(Z)V

    .line 526
    return-void
.end method

.method private setOwner(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 2
    .param p1, "session"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOwner: Session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/CameraController;->getSessionInfo(Lorg/codeaurora/ims/ImsCallSessionImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    invoke-virtual {p0, p1}, Lcom/qualcomm/ims/vt/CameraController;->isOwner(Lorg/codeaurora/ims/ImsCallSessionImpl;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 293
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/CameraController;->releaseCurrentOwner()V

    .line 294
    iput-object p1, p0, Lcom/qualcomm/ims/vt/CameraController;->mCameraOwner:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 295
    invoke-virtual {p1, p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->addListener(Lorg/codeaurora/ims/QImsSessionBase$Listener;)V

    goto :goto_0

    .line 297
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOwner: The session is already registered as camera owner, session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 300
    :goto_0
    return-void
.end method

.method private updateCameraSession()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 345
    const-string v0, "updateCameraSession"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 346
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/qualcomm/ims/vt/Camera;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    invoke-virtual {v0}, Lcom/qualcomm/ims/vt/Camera;->isPreviewStarted()Z

    move-result v0

    .line 352
    .local v0, "isPreviewStarted":Z
    iget-object v1, p0, Lcom/qualcomm/ims/vt/CameraController;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    invoke-virtual {v1}, Lcom/qualcomm/ims/vt/Camera;->isRecordingStarted()Z

    move-result v1

    .line 353
    .local v1, "isRecordingStarted":Z
    iget-object v2, p0, Lcom/qualcomm/ims/vt/CameraController;->mPreviewSurface:Landroid/view/Surface;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    .line 354
    .local v2, "canStartPreview":Z
    :goto_0
    iget-boolean v5, p0, Lcom/qualcomm/ims/vt/CameraController;->mIsRecordingEnabled:Z

    if-eqz v5, :cond_2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    .line 357
    .local v3, "canStartRecording":Z
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateCameraSession mPreviewSurface="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/qualcomm/ims/vt/CameraController;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mIsRecordingEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/qualcomm/ims/vt/CameraController;->mIsRecordingEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mRecordingSurface="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/qualcomm/ims/vt/CameraController;->mRecordingSurface:Landroid/view/Surface;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 360
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateCameraSession canStartRecording="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isRecordingStarted="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 363
    if-eqz v3, :cond_3

    if-nez v1, :cond_3

    .line 364
    iget-object v4, p0, Lcom/qualcomm/ims/vt/CameraController;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    iget-object v5, p0, Lcom/qualcomm/ims/vt/CameraController;->mPreviewSurface:Landroid/view/Surface;

    iget-object v6, p0, Lcom/qualcomm/ims/vt/CameraController;->mRecordingSurface:Landroid/view/Surface;

    invoke-virtual {v4, v5, v6}, Lcom/qualcomm/ims/vt/Camera;->startRecording(Landroid/view/Surface;Landroid/view/Surface;)V

    .line 366
    iget-object v4, p0, Lcom/qualcomm/ims/vt/CameraController;->mRecordingSurface:Landroid/view/Surface;

    iput-object v4, p0, Lcom/qualcomm/ims/vt/CameraController;->mStartRecordingSurface:Landroid/view/Surface;

    goto :goto_2

    .line 368
    :cond_3
    if-eqz v2, :cond_4

    if-nez v0, :cond_4

    .line 369
    iget-object v4, p0, Lcom/qualcomm/ims/vt/CameraController;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    iget-object v5, p0, Lcom/qualcomm/ims/vt/CameraController;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v4, v5}, Lcom/qualcomm/ims/vt/Camera;->startPreview(Landroid/view/Surface;)V

    goto :goto_2

    .line 370
    :cond_4
    if-nez v2, :cond_5

    if-eqz v0, :cond_5

    .line 371
    iget-object v4, p0, Lcom/qualcomm/ims/vt/CameraController;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    invoke-virtual {v4}, Lcom/qualcomm/ims/vt/Camera;->stopPreview()V

    .line 373
    :cond_5
    :goto_2
    return-void

    .line 347
    .end local v0    # "isPreviewStarted":Z
    .end local v1    # "isRecordingStarted":Z
    .end local v2    # "canStartPreview":Z
    .end local v3    # "canStartRecording":Z
    :cond_6
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCameraSession: Camera is not in correct state, camera="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/ims/vt/CameraController;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 348
    return-void
.end method


# virtual methods
.method public close(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 1
    .param p1, "session"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 174
    const-string v0, "close"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/CameraController;->doClose(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    .line 176
    return-void
.end method

.method public dispose()V
    .locals 1

    .line 128
    const-string v0, "dispose()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    invoke-virtual {v0, p0}, Lcom/qualcomm/ims/vt/ImsMedia;->removeCameraListener(Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;)V

    .line 130
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    invoke-virtual {v0, p0}, Lcom/qualcomm/ims/vt/ImsMedia;->removeMediaStateListener(Lcom/qualcomm/ims/vt/ImsMedia$MediaStateListener;)V

    .line 131
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/ims/vt/CameraController;->sInstance:Lcom/qualcomm/ims/vt/CameraController;

    .line 132
    return-void
.end method

.method getCameraCapabilities()Landroid/telecom/VideoProfile$CameraCapabilities;
    .locals 8

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCameraCapabilities mCamera="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/ims/vt/CameraController;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 270
    :try_start_0
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/CameraController;->getPreviewSize()Landroid/util/Size;

    move-result-object v0

    .line 271
    .local v0, "size":Landroid/util/Size;
    iget-object v2, p0, Lcom/qualcomm/ims/vt/CameraController;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    invoke-virtual {v2}, Lcom/qualcomm/ims/vt/Camera;->isZoomSupported()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 272
    .local v2, "isZoomSupported":Ljava/lang/Boolean;
    iget-object v3, p0, Lcom/qualcomm/ims/vt/CameraController;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    invoke-virtual {v3}, Lcom/qualcomm/ims/vt/Camera;->getMaxZoom()F

    move-result v3

    .line 273
    .local v3, "maxZoom":F
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCameraCapabilities: PreviewSize="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isZoomSupported="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " maxZoom="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    new-instance v4, Landroid/telecom/VideoProfile$CameraCapabilities;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v6

    .line 276
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-direct {v4, v5, v6, v7, v3}, Landroid/telecom/VideoProfile$CameraCapabilities;-><init>(IIZF)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    return-object v4

    .line 277
    .end local v0    # "size":Landroid/util/Size;
    .end local v2    # "isZoomSupported":Ljava/lang/Boolean;
    .end local v3    # "maxZoom":F
    :catch_0
    move-exception v0

    .line 278
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/qualcomm/ims/vt/CameraController;->sendCameraStatus(I)V

    .line 279
    return-object v1

    .line 282
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :cond_0
    return-object v1
.end method

.method public getPreviewSurface()Landroid/view/Surface;
    .locals 1

    .line 423
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mPreviewSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public getRecordingSurface()Landroid/view/Surface;
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mRecordingSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public isOwner(Lorg/codeaurora/ims/ImsCallSessionImpl;)Z
    .locals 1
    .param p1, "session"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 314
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mCameraOwner:Lorg/codeaurora/ims/ImsCallSessionImpl;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onCallModifyInitiated(Lorg/codeaurora/ims/QImsSessionBase;Lorg/codeaurora/ims/CallModify;)V
    .locals 0
    .param p1, "session"    # Lorg/codeaurora/ims/QImsSessionBase;
    .param p2, "callModify"    # Lorg/codeaurora/ims/CallModify;

    .line 557
    return-void
.end method

.method public onCallTypeChanging(Lorg/codeaurora/ims/QImsSessionBase;I)V
    .locals 0
    .param p1, "session"    # Lorg/codeaurora/ims/QImsSessionBase;
    .param p2, "newCallType"    # I

    .line 561
    return-void
.end method

.method public onCameraConfigChanged(IIIILandroid/view/Surface;I)V
    .locals 3
    .param p1, "mediaId"    # I
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "fps"    # I
    .param p5, "surface"    # Landroid/view/Surface;
    .param p6, "orientationMode"    # I

    .line 432
    const-string v0, "onCameraConfigChanged"

    invoke-direct {p0, v0, p1}, Lcom/qualcomm/ims/vt/CameraController;->checkMediaId(Ljava/lang/String;I)V

    .line 433
    new-instance v0, Lcom/qualcomm/ims/vt/Camera$ConfigIms;

    invoke-direct {v0, p2, p3, p4, p6}, Lcom/qualcomm/ims/vt/Camera$ConfigIms;-><init>(IIII)V

    iput-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mCameraConfigIms:Lcom/qualcomm/ims/vt/Camera$ConfigIms;

    .line 434
    iput p4, p0, Lcom/qualcomm/ims/vt/CameraController;->mRecorderFrameRate:I

    .line 435
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mRecordingSurface:Landroid/view/Surface;

    .line 436
    .local v0, "prevRecordingSurface":Landroid/view/Surface;
    iput-object p5, p0, Lcom/qualcomm/ims/vt/CameraController;->mRecordingSurface:Landroid/view/Surface;

    .line 437
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraConfigChanged, cameraConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/ims/vt/CameraController;->mCameraConfigIms:Lcom/qualcomm/ims/vt/Camera$ConfigIms;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 439
    iget-object v1, p0, Lcom/qualcomm/ims/vt/CameraController;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/qualcomm/ims/vt/Camera;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 445
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/ims/vt/CameraController;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    iget-object v2, p0, Lcom/qualcomm/ims/vt/CameraController;->mCameraConfigIms:Lcom/qualcomm/ims/vt/Camera$ConfigIms;

    invoke-virtual {v1, v2}, Lcom/qualcomm/ims/vt/Camera;->canReconfigureWithActiveSession(Lcom/qualcomm/ims/vt/Camera$ConfigIms;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/qualcomm/ims/vt/CameraController;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    .line 446
    invoke-virtual {v1}, Lcom/qualcomm/ims/vt/Camera;->isPreviewStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 447
    iget-object v1, p0, Lcom/qualcomm/ims/vt/CameraController;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    invoke-virtual {v1}, Lcom/qualcomm/ims/vt/Camera;->stopPreview()V

    goto :goto_0

    .line 448
    :cond_1
    iget-object v1, p0, Lcom/qualcomm/ims/vt/CameraController;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    invoke-virtual {v1}, Lcom/qualcomm/ims/vt/Camera;->isRecordingStarted()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/qualcomm/ims/vt/CameraController;->mRecordingSurface:Landroid/view/Surface;

    .line 449
    invoke-static {v1, v0}, Lcom/qualcomm/ims/vt/ImsMedia;->haveSameParent(Landroid/view/Surface;Landroid/view/Surface;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 450
    const-string v1, "onCameraConfigChanged, recording surface changed. Stop recording"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 451
    iget-object v1, p0, Lcom/qualcomm/ims/vt/CameraController;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    invoke-virtual {v1}, Lcom/qualcomm/ims/vt/Camera;->stopRecording()V

    .line 455
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/qualcomm/ims/vt/CameraController;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    invoke-virtual {v1}, Lcom/qualcomm/ims/vt/Camera;->isRecordingStarted()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/qualcomm/ims/vt/CameraController;->mRecordingSurface:Landroid/view/Surface;

    iget-object v2, p0, Lcom/qualcomm/ims/vt/CameraController;->mStartRecordingSurface:Landroid/view/Surface;

    .line 456
    invoke-static {v1, v2}, Lcom/qualcomm/ims/vt/ImsMedia;->haveSameParent(Landroid/view/Surface;Landroid/view/Surface;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 457
    const-string v1, "onCameraConfigChanged, mStartRecordingSurface surface changed. Stop recording"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 458
    iget-object v1, p0, Lcom/qualcomm/ims/vt/CameraController;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    invoke-virtual {v1}, Lcom/qualcomm/ims/vt/Camera;->stopRecording()V

    .line 462
    :cond_3
    iget-object v1, p0, Lcom/qualcomm/ims/vt/CameraController;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    iget-object v2, p0, Lcom/qualcomm/ims/vt/CameraController;->mCameraConfigIms:Lcom/qualcomm/ims/vt/Camera$ConfigIms;

    invoke-virtual {v1, v2}, Lcom/qualcomm/ims/vt/Camera;->reconfigure(Lcom/qualcomm/ims/vt/Camera$ConfigIms;)V

    .line 463
    iget v1, p0, Lcom/qualcomm/ims/vt/CameraController;->mRecorderFrameRate:I

    invoke-virtual {p0, p1, v1}, Lcom/qualcomm/ims/vt/CameraController;->onUpdateRecorderFrameRate(II)V

    .line 464
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/CameraController;->updateCameraSession()V

    .line 465
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/CameraController;->sendCameraCapabilities()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 468
    goto :goto_1

    .line 466
    :catch_0
    move-exception v1

    .line 467
    .local v1, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/qualcomm/ims/vt/CameraController;->sendCameraStatus(I)V

    .line 469
    .end local v1    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_1
    return-void

    .line 440
    :cond_4
    :goto_2
    const-string v1, "onCameraConfigChanged: Camera is not open deferring configuration..."

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 441
    return-void
.end method

.method public onClosed(Lorg/codeaurora/ims/QImsSessionBase;)V
    .locals 3
    .param p1, "session"    # Lorg/codeaurora/ims/QImsSessionBase;

    .line 546
    move-object v0, p1

    check-cast v0, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 547
    .local v0, "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClosed: Session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/CameraController;->getSessionInfo(Lorg/codeaurora/ims/ImsCallSessionImpl;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 548
    invoke-virtual {p0, v0}, Lcom/qualcomm/ims/vt/CameraController;->close(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    .line 549
    return-void
.end method

.method public onDisconnected(Lorg/codeaurora/ims/QImsSessionBase;)V
    .locals 0
    .param p1, "session"    # Lorg/codeaurora/ims/QImsSessionBase;

    .line 542
    return-void
.end method

.method public onError(Lcom/qualcomm/ims/vt/Camera;I)V
    .locals 2
    .param p1, "camera"    # Lcom/qualcomm/ims/vt/Camera;
    .param p2, "error"    # I

    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CameraFailed: cameraId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/qualcomm/ims/vt/Camera;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 537
    invoke-direct {p0, p2}, Lcom/qualcomm/ims/vt/CameraController;->sendCameraStatus(I)V

    .line 538
    return-void
.end method

.method public onMediaDeinitialized()V
    .locals 1

    .line 395
    const-string v0, "onMediaDeinitialized. closing Camera"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 396
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mCameraOwner:Lorg/codeaurora/ims/ImsCallSessionImpl;

    if-eqz v0, :cond_0

    .line 397
    invoke-virtual {p0, v0}, Lcom/qualcomm/ims/vt/CameraController;->close(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    .line 402
    :cond_0
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/CameraController;->closeCamera()V

    .line 403
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mIsRecordingEnabled:Z

    .line 404
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mRecordingSurface:Landroid/view/Surface;

    .line 405
    iput-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mPreviewSurface:Landroid/view/Surface;

    .line 407
    iput-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mStartRecordingSurface:Landroid/view/Surface;

    .line 409
    return-void
.end method

.method public onMediaInitialized()V
    .locals 0

    .line 414
    return-void
.end method

.method public onRecordingDisabled(I)V
    .locals 1
    .param p1, "mediaId"    # I

    .line 388
    const-string v0, "onRecordingDisabled"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 389
    invoke-direct {p0, v0, p1}, Lcom/qualcomm/ims/vt/CameraController;->checkMediaId(Ljava/lang/String;I)V

    .line 390
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mIsRecordingEnabled:Z

    .line 391
    return-void
.end method

.method public onRecordingEnabled(I)V
    .locals 2
    .param p1, "mediaId"    # I

    .line 377
    const-string v0, "onRecordingEnabled"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 378
    invoke-direct {p0, v0, p1}, Lcom/qualcomm/ims/vt/CameraController;->checkMediaId(Ljava/lang/String;I)V

    .line 380
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mIsRecordingEnabled:Z

    .line 381
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/CameraController;->updateCameraSession()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    goto :goto_0

    .line 382
    :catch_0
    move-exception v0

    .line 383
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/qualcomm/ims/vt/CameraController;->sendCameraStatus(I)V

    .line 385
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_0
    return-void
.end method

.method public onUnsolCallModify(Lorg/codeaurora/ims/QImsSessionBase;Lorg/codeaurora/ims/CallModify;)V
    .locals 0
    .param p1, "session"    # Lorg/codeaurora/ims/QImsSessionBase;
    .param p2, "callModify"    # Lorg/codeaurora/ims/CallModify;

    .line 553
    return-void
.end method

.method public onUpdateRecorderFrameRate(II)V
    .locals 2
    .param p1, "mediaId"    # I
    .param p2, "rate"    # I

    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpdateRecorderFrameRate, rate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 474
    const-string v0, "onUpdateRecorderFrameRate"

    invoke-direct {p0, v0, p1}, Lcom/qualcomm/ims/vt/CameraController;->checkMediaId(Ljava/lang/String;I)V

    .line 475
    iput p2, p0, Lcom/qualcomm/ims/vt/CameraController;->mRecorderFrameRate:I

    .line 476
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/qualcomm/ims/vt/Camera;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 482
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    invoke-virtual {v0, p2}, Lcom/qualcomm/ims/vt/Camera;->setRecorderFrameRate(I)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 485
    goto :goto_0

    .line 483
    :catch_0
    move-exception v0

    .line 484
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/qualcomm/ims/vt/CameraController;->sendCameraStatus(I)V

    .line 486
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_0
    return-void

    .line 477
    :cond_1
    :goto_1
    const-string v0, "onUpdateRecorderFrameRate: Camera is not open deferring..."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 478
    return-void
.end method

.method public open(Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 3
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "session"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "open: cameraId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/qualcomm/ims/vt/CameraController;->getSessionInfo(Lorg/codeaurora/ims/ImsCallSessionImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    if-eqz p1, :cond_0

    .line 162
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/qualcomm/ims/vt/CameraController;->doOpen(Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "open: Failed to open, cameraId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Exception="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v1

    invoke-direct {p0, p2, v1}, Lcom/qualcomm/ims/vt/CameraController;->sendCameraStatus(Lorg/codeaurora/ims/ImsCallSessionImpl;I)V

    .line 167
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_0
    return-void

    .line 157
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "open: Invalid camera id, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "CameraController: Invalid camera id."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPreviewSurface(Landroid/view/Surface;Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "session"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPreviewSurface, surface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 186
    invoke-direct {p0, p2}, Lcom/qualcomm/ims/vt/CameraController;->getSessionInfo(Lorg/codeaurora/ims/ImsCallSessionImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 185
    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0, p2}, Lcom/qualcomm/ims/vt/CameraController;->isOwner(Lorg/codeaurora/ims/ImsCallSessionImpl;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPreviewSurface: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/qualcomm/ims/vt/CameraController;->getSessionInfo(Lorg/codeaurora/ims/ImsCallSessionImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is not a camera owner. Camera owner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/ims/vt/CameraController;->mCameraOwner:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 190
    invoke-direct {p0, v1}, Lcom/qualcomm/ims/vt/CameraController;->getSessionInfo(Lorg/codeaurora/ims/ImsCallSessionImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 189
    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    return-void

    .line 201
    :cond_0
    if-eqz p1, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mPreviewSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 202
    invoke-static {v0, p1}, Lcom/qualcomm/ims/vt/ImsMedia;->haveSameParent(Landroid/view/Surface;Landroid/view/Surface;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    if-eqz v0, :cond_3

    .line 204
    invoke-virtual {v0, p1}, Lcom/qualcomm/ims/vt/Camera;->isRestartNeededOnPreviewSurfaceSizeChanged(Landroid/view/Surface;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    iget-object v1, p0, Lcom/qualcomm/ims/vt/CameraController;->mRecordingSurface:Landroid/view/Surface;

    .line 205
    invoke-virtual {v0, v1}, Lcom/qualcomm/ims/vt/Camera;->isRestartNeededOnRecordingSurfaceSizeChanged(Landroid/view/Surface;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 207
    :cond_2
    const-string v0, "setPreviewSurface: Restarting camera preview..."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mPreviewSurface:Landroid/view/Surface;

    .line 209
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/CameraController;->updateCameraSession()V

    .line 211
    :cond_3
    iput-object p1, p0, Lcom/qualcomm/ims/vt/CameraController;->mPreviewSurface:Landroid/view/Surface;

    .line 212
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/CameraController;->updateCameraSession()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    goto :goto_0

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/qualcomm/ims/vt/CameraController;->sendCameraStatus(I)V

    .line 216
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_0
    return-void
.end method

.method public setZoom(F)V
    .locals 5
    .param p1, "value"    # F

    .line 219
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/qualcomm/ims/vt/Camera;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 230
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    invoke-virtual {v0}, Lcom/qualcomm/ims/vt/Camera;->getMaxZoom()F

    move-result v0

    .line 231
    .local v0, "maxZoom":F
    iget-object v1, p0, Lcom/qualcomm/ims/vt/CameraController;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    invoke-virtual {v1}, Lcom/qualcomm/ims/vt/Camera;->getMinZoom()F

    move-result v1

    .line 232
    .local v1, "minZoom":F
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setZoom: maxZoom="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " minZoom="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    iget-object v2, p0, Lcom/qualcomm/ims/vt/CameraController;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    sub-float v3, v0, v1

    mul-float/2addr v3, p1

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    add-float/2addr v3, v1

    invoke-virtual {v2, v3}, Lcom/qualcomm/ims/vt/Camera;->setZoom(F)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    .end local v0    # "maxZoom":F
    .end local v1    # "minZoom":F
    goto :goto_0

    .line 236
    :catch_0
    move-exception v0

    .line 237
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to change zoom, value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Exception="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_0
    return-void

    .line 220
    :cond_1
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setZoom: Camera is not in correct state, camera="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/ims/vt/CameraController;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    return-void
.end method
