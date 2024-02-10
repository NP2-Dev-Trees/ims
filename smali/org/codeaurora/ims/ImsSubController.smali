.class public Lorg/codeaurora/ims/ImsSubController;
.super Ljava/lang/Object;
.source "ImsSubController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ImsSubController$ImsSubControllerHandler;,
        Lorg/codeaurora/ims/ImsSubController$ImsStackConfigListener;,
        Lorg/codeaurora/ims/ImsSubController$OnMultiSimConfigChanged;,
        Lorg/codeaurora/ims/ImsSubController$ImsStateListener;
    }
.end annotation


# static fields
.field private static final ACTION_DDS_SWITCH_DONE:Ljava/lang/String; = "org.codeaurora.intent.action.ACTION_DDS_SWITCH_DONE"

.field private static final ACTION_MSIM_VOICE_CAPABILITY:Ljava/lang/String; = "org.codeaurora.intent.action.MSIM_VOICE_CAPABILITY"

.field private static final DEFAULT_PHONE_ID:I = 0x0

.field private static final DSDS_TRANSITION_SUPPORTED_MODEM:Ljava/lang/String; = "MPSS.DE."

.field private static final DSDS_TRANSITION_SUPPORTED_MODEM_VERSION:I = 0x5

.field private static final EVENT_GET_SUB_CONFIG:I = 0x2

.field private static final EVENT_IMS_SERVICE_DOWN:I = 0x4

.field private static final EVENT_IMS_SERVICE_UP:I = 0x3

.field private static final EVENT_MSIM_VOICE_CAPABILITY_CHANGED:I = 0x7

.field private static final EVENT_QUERY_MSIM_VOICE_CAPABILITY:I = 0x8

.field private static final EVENT_RADIO_AVAILABLE:I = 0x5

.field private static final EVENT_RADIO_NOT_AVAILABLE:I = 0x6

.field private static final EVENT_SUB_CONFIG_CHANGED:I = 0x1

.field private static final EXTRAS_DSDS_TRANSITION_SUPPORTED:Ljava/lang/String; = "DsdsTransitionSupported"

.field private static final EXTRAS_MSIM_VOICE_CAPABILITY:Ljava/lang/String; = "MsimVoiceCapability"

.field private static final INVALID_PHONE_ID:I = -0x1

.field private static final PERMISSION_MSIM_VOICE_CAPABILITY:Ljava/lang/String; = "com.qti.permission.RECEIVE_MSIM_VOICE_CAPABILITY"

.field private static mSimultStackCount:I

.field private static mStackStatus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final MAX_VALID_STACK_STATUS_COUNT:I

.field private mActiveStacks:[Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsDsdsTransitionFeatureSupported:Z

.field private mIsDsdv:Z

.field private mIsReceiverRegistered:Z

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ImsSubController$ImsStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMultiSimConfigChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mNumMultiModeStacks:I

.field private mOnMultiSimConfigChangedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ImsSubController$OnMultiSimConfigChanged;",
            ">;"
        }
    .end annotation
.end field

.field private mSenderRxrs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ImsSenderRxr;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceSubs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ImsServiceSub;",
            ">;"
        }
    .end annotation
.end field

.field private mStackConfigListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ImsSubController$ImsStackConfigListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTm:Landroid/telephony/TelephonyManager;


# direct methods
.method static bridge synthetic -$$Nest$mdeRegisterFromRadioEvents(Lorg/codeaurora/ims/ImsSubController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSubController;->deRegisterFromRadioEvents(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleMultiSimVoiceCapability(Lorg/codeaurora/ims/ImsSubController;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSubController;->handleMultiSimVoiceCapability(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleOnMultiSimConfigChanged(Lorg/codeaurora/ims/ImsSubController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSubController;->handleOnMultiSimConfigChanged(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleRadioAvailable(Lorg/codeaurora/ims/ImsSubController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSubController;->handleRadioAvailable(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSubConfigChanged(Lorg/codeaurora/ims/ImsSubController;Lorg/codeaurora/telephony/utils/AsyncResult;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsSubController;->handleSubConfigChanged(Lorg/codeaurora/telephony/utils/AsyncResult;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$misDisposed(Lorg/codeaurora/ims/ImsSubController;)Z
    .locals 0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSubController;->isDisposed()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mregisterForRadioEvents(Lorg/codeaurora/ims/ImsSubController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSubController;->registerForRadioEvents(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateActiveImsStackForSubId(Lorg/codeaurora/ims/ImsSubController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSubController;->updateActiveImsStackForSubId(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateStackConfig(Lorg/codeaurora/ims/ImsSubController;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsSubController;->updateStackConfig(IZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 61
    const/4 v0, 0x0

    sput v0, Lorg/codeaurora/ims/ImsSubController;->mSimultStackCount:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 195
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsSubController;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    .line 196
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 199
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    invoke-direct {p0, p1, v0, v1, p2}, Lorg/codeaurora/ims/ImsSubController;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Landroid/os/Looper;)V

    .line 201
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsSubController;->getActiveModemCount()I

    move-result v0

    .line 202
    .local v0, "activeModemCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 203
    invoke-direct {p0, p1, v1}, Lorg/codeaurora/ims/ImsSubController;->createImsSenderRxr(Landroid/content/Context;I)V

    .line 204
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSubController;->mSenderRxrs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-direct {p0, p1, v1, v2}, Lorg/codeaurora/ims/ImsSubController;->createImsServiceSub(Landroid/content/Context;ILorg/codeaurora/ims/ImsSenderRxr;)V

    .line 202
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 206
    .end local v1    # "i":I
    :cond_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSubController;->isDsdsTransitionFeatureSupported()Z

    move-result v1

    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsSubController;->mIsDsdsTransitionFeatureSupported:Z

    .line 207
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Landroid/os/Looper;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p4, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ImsSenderRxr;",
            ">;",
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ImsServiceSub;",
            ">;",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    .line 211
    .local p2, "senderRxrs":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/ImsSenderRxr;>;"
    .local p3, "serviceSubs":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/ImsServiceSub;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mListeners:Ljava/util/List;

    .line 40
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mStackConfigListeners:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mOnMultiSimConfigChangedListeners:Ljava/util/List;

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/ImsSubController;->mNumMultiModeStacks:I

    .line 56
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsSubController;->mIsReceiverRegistered:Z

    .line 65
    const/4 v1, 0x6

    iput v1, p0, Lorg/codeaurora/ims/ImsSubController;->MAX_VALID_STACK_STATUS_COUNT:I

    .line 66
    new-array v1, v1, [Z

    iput-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mActiveStacks:[Z

    .line 67
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 75
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/codeaurora/ims/ImsSubController;->mIsDsdv:Z

    .line 76
    iput-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mTm:Landroid/telephony/TelephonyManager;

    .line 87
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsSubController;->mIsDsdsTransitionFeatureSupported:Z

    .line 760
    new-instance v0, Lorg/codeaurora/ims/ImsSubController$1;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsSubController$1;-><init>(Lorg/codeaurora/ims/ImsSubController;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 793
    new-instance v0, Lorg/codeaurora/ims/ImsSubController$2;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsSubController$2;-><init>(Lorg/codeaurora/ims/ImsSubController;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mMultiSimConfigChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 212
    iput-object p1, p0, Lorg/codeaurora/ims/ImsSubController;->mContext:Landroid/content/Context;

    .line 213
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mTm:Landroid/telephony/TelephonyManager;

    .line 214
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mMultiSimConfigChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.telephony.action.MULTI_SIM_CONFIG_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 217
    iput-object p2, p0, Lorg/codeaurora/ims/ImsSubController;->mSenderRxrs:Ljava/util/List;

    .line 218
    iput-object p3, p0, Lorg/codeaurora/ims/ImsSubController;->mServiceSubs:Ljava/util/List;

    .line 219
    new-instance v0, Lorg/codeaurora/ims/ImsSubController$ImsSubControllerHandler;

    invoke-direct {v0, p0, p4}, Lorg/codeaurora/ims/ImsSubController$ImsSubControllerHandler;-><init>(Lorg/codeaurora/ims/ImsSubController;Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    .line 220
    const-string v0, "telephony_subscription_service"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 222
    return-void
.end method

.method private broadcastConcurrentCallsIntent(I)V
    .locals 3
    .param p1, "voiceCapability"    # I

    .line 383
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.codeaurora.intent.action.MSIM_VOICE_CAPABILITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 384
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "MsimVoiceCapability"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 385
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "is dsds transition feature supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsSubController;->mIsDsdsTransitionFeatureSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 387
    const-string v1, "DsdsTransitionSupported"

    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsSubController;->mIsDsdsTransitionFeatureSupported:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 389
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mContext:Landroid/content/Context;

    const-string v2, "com.qti.permission.RECEIVE_MSIM_VOICE_CAPABILITY"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 390
    return-void
.end method

.method private containsModemVersion(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "modemBaseband"    # Ljava/lang/String;
    .param p2, "modemType"    # Ljava/lang/String;

    .line 418
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private createImsSenderRxr(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .line 233
    new-instance v0, Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;-><init>(Landroid/content/Context;I)V

    .line 234
    .local v0, "senderRxr":Lorg/codeaurora/ims/ImsSenderRxr;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 235
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 236
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForImsServiceUp(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 237
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForImsServiceDown(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 238
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mSenderRxrs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    return-void
.end method

.method private createImsServiceSub(Landroid/content/Context;ILorg/codeaurora/ims/ImsSenderRxr;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I
    .param p3, "senderRxr"    # Lorg/codeaurora/ims/ImsSenderRxr;

    .line 242
    new-instance v0, Lorg/codeaurora/ims/ImsServiceSub;

    invoke-direct {v0, p1, p2, p3, p0}, Lorg/codeaurora/ims/ImsServiceSub;-><init>(Landroid/content/Context;ILorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/ImsSubController;)V

    .line 243
    .local v0, "serviceSub":Lorg/codeaurora/ims/ImsServiceSub;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mServiceSubs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    return-void
.end method

.method private deRegisterFromRadioEvents(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .line 551
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mTm:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_1

    .line 556
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mSenderRxrs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsSenderRxr;

    .line 557
    .local v0, "ci":Lorg/codeaurora/ims/ImsSenderRxr;
    if-nez v0, :cond_1

    .line 558
    const-string v1, "deRegisterFromRadioEvents: ImsSenderRxr is null"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 559
    return-void

    .line 562
    :cond_1
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForImsSubConfigChanged(Landroid/os/Handler;)V

    .line 566
    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 567
    .local v1, "isPrimarySubscription":Z
    :goto_0
    if-nez v1, :cond_3

    .line 568
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deRegisterFromRadioEvents: phoneId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not primary subscription."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 570
    return-void

    .line 573
    :cond_3
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForMultiSimVoiceCapabilityChanged(Landroid/os/Handler;)V

    .line 574
    return-void

    .line 552
    .end local v0    # "ci":Lorg/codeaurora/ims/ImsSenderRxr;
    .end local v1    # "isPrimarySubscription":Z
    :cond_4
    :goto_1
    const-string v0, "deRegisterFromRadioEvents: Single SIM mode"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 553
    return-void
.end method

.method private disposeImsSenderRxr(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 838
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mSenderRxrs:Ljava/util/List;

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 842
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disposeImsSenderRxr: phoneId - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 843
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mSenderRxrs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsSenderRxr;

    .line 844
    .local v0, "senderRxr":Lorg/codeaurora/ims/ImsSenderRxr;
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->dispose()V

    .line 845
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mSenderRxrs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 846
    return-void

    .line 839
    .end local v0    # "senderRxr":Lorg/codeaurora/ims/ImsSenderRxr;
    :cond_1
    :goto_0
    const-string v0, "disposeImsSenderRxr: cannot find instance to dispose"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 840
    return-void
.end method

.method public static getDefaultPhoneId()I
    .locals 1

    .line 296
    const/4 v0, 0x0

    return v0
.end method

.method private handleMultiSimVoiceCapability(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 3
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 368
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v0, Lorg/codeaurora/ims/ImsRilException;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsRilException;->getErrorCode()I

    move-result v0

    .line 370
    .local v0, "errorCode":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMultiSimVoiceCapability errorCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 371
    return-void

    .line 374
    .end local v0    # "errorCode":I
    :cond_0
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 375
    const-string v0, "handleMultiSimVoiceCapability ar.result is null"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 376
    return-void

    .line 379
    :cond_1
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsSubController;->broadcastConcurrentCallsIntent(I)V

    .line 380
    return-void
.end method

.method private handleOnMultiSimConfigChanged(I)V
    .locals 2
    .param p1, "activeModemCount"    # I

    .line 810
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSubController;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 811
    const-string v0, "handleOnMultiSimConfigChanged: already disposed.Ignore."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 812
    return-void

    .line 814
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mServiceSubs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 815
    .local v0, "prevModemCount":I
    if-ne p1, v0, :cond_1

    .line 816
    const-string v1, "The number of slots is equal to the current size, nothing to do"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 817
    return-void

    .line 819
    :cond_1
    if-le p1, v0, :cond_2

    .line 820
    invoke-direct {p0, v0, p1}, Lorg/codeaurora/ims/ImsSubController;->switchToMultiSim(II)V

    goto :goto_0

    .line 822
    :cond_2
    invoke-direct {p0, v0, p1}, Lorg/codeaurora/ims/ImsSubController;->switchToSingleSim(II)V

    .line 823
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSubController;->broadcastConcurrentCallsIntent(I)V

    .line 825
    :goto_0
    invoke-direct {p0, v0, p1}, Lorg/codeaurora/ims/ImsSubController;->notifyOnMultiSimConfigChanged(II)V

    .line 826
    return-void
.end method

.method private handleRadioAvailable(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .line 491
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mTm:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 500
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mSenderRxrs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsSenderRxr;

    .line 501
    .local v0, "ci":Lorg/codeaurora/ims/ImsSenderRxr;
    if-nez v0, :cond_1

    .line 502
    const-string v1, "handleRadioAvailable: ImsSenderRxr is null"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 503
    return-void

    .line 506
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->getImsSubConfig(Landroid/os/Message;)V

    .line 507
    if-nez p1, :cond_2

    .line 508
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    .line 509
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 508
    const/16 v3, 0x8

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queryMultiSimVoiceCapability(Landroid/os/Message;)V

    .line 511
    :cond_2
    return-void

    .line 492
    .end local v0    # "ci":Lorg/codeaurora/ims/ImsSenderRxr;
    :cond_3
    :goto_0
    const-string v0, "handleRadioAvailable: Single SIM mode"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 493
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSubController;->initSubscriptionStatus()V

    .line 494
    return-void
.end method

.method private handleRafInfo()V
    .locals 10

    .line 704
    iget v0, p0, Lorg/codeaurora/ims/ImsSubController;->mNumMultiModeStacks:I

    if-lez v0, :cond_0

    .line 705
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleRafInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/codeaurora/ims/ImsSubController;->mNumMultiModeStacks:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Multimode stacks greater than zero. EXIT!!!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 707
    return-void

    .line 710
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v0

    .line 711
    .local v0, "numPhones":I
    const/4 v1, 0x0

    .line 712
    .local v1, "tempPhoneId":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_3

    .line 713
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSubController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 714
    invoke-virtual {v4, v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v4

    .line 715
    .local v4, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-eqz v4, :cond_2

    .line 716
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    .line 717
    .local v5, "subId":I
    iget-object v6, p0, Lorg/codeaurora/ims/ImsSubController;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6, v5}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSupportedRadioAccessFamily()J

    move-result-wide v6

    .line 718
    .local v6, "rafInfo":J
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleRafInfo: Phone: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Info:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 719
    invoke-direct {p0, v6, v7}, Lorg/codeaurora/ims/ImsSubController;->isMultiModeSupported(J)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 720
    iget v8, p0, Lorg/codeaurora/ims/ImsSubController;->mNumMultiModeStacks:I

    add-int/2addr v8, v3

    iput v8, p0, Lorg/codeaurora/ims/ImsSubController;->mNumMultiModeStacks:I

    .line 721
    move v1, v2

    .line 723
    .end local v5    # "subId":I
    .end local v6    # "rafInfo":J
    :cond_1
    goto :goto_1

    .line 724
    :cond_2
    const-string v3, "handleRafInfo: subIds not valid"

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 712
    .end local v4    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 727
    .end local v2    # "i":I
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleRafInfo: NumPhones: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "Multiple Multimode stacks: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lorg/codeaurora/ims/ImsSubController;->mNumMultiModeStacks:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 734
    iget v2, p0, Lorg/codeaurora/ims/ImsSubController;->mNumMultiModeStacks:I

    if-le v2, v3, :cond_5

    .line 737
    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsSubController;->mIsReceiverRegistered:Z

    if-eqz v2, :cond_4

    .line 738
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSubController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lorg/codeaurora/ims/ImsSubController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 739
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/codeaurora/ims/ImsSubController;->mIsReceiverRegistered:Z

    .line 746
    :cond_4
    const/4 v2, -0x1

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsSubController;->updateActiveImsStackForSubId(I)V

    .line 749
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSubController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lorg/codeaurora/ims/ImsSubController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "org.codeaurora.intent.action.ACTION_DDS_SWITCH_DONE"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 751
    iput-boolean v3, p0, Lorg/codeaurora/ims/ImsSubController;->mIsReceiverRegistered:Z

    .line 752
    const-string v2, "handleRafInfo: registered for DDS switch..."

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 755
    :cond_5
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSubController;->updateActiveImsStackForPhoneId(I)V

    .line 757
    :goto_2
    return-void
.end method

.method private handleSubConfigChanged(Lorg/codeaurora/telephony/utils/AsyncResult;Z)V
    .locals 4
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;
    .param p2, "ignoreStackCount"    # Z

    .line 338
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsSubController;->isMultiSimEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 339
    const-string v0, "handleSubConfigChanged: Single SIM mode"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 340
    return-void

    .line 342
    :cond_0
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 343
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsSubController;->handleSubConfigException(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 344
    :cond_1
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_5

    .line 345
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/ImsSubConfigDetails;

    .line 346
    .local v0, "config":Lorg/codeaurora/ims/ImsSubConfigDetails;
    if-nez p2, :cond_2

    .line 347
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsSubConfigDetails;->getSimultStackCount()I

    move-result v1

    sput v1, Lorg/codeaurora/ims/ImsSubController;->mSimultStackCount:I

    .line 349
    :cond_2
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsSubConfigDetails;->getImsStackEnabledList()Ljava/util/List;

    move-result-object v1

    sput-object v1, Lorg/codeaurora/ims/ImsSubController;->mStackStatus:Ljava/util/List;

    .line 350
    const/4 v1, 0x6

    new-array v1, v1, [Z

    .line 352
    .local v1, "activeStacks":[Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget v3, Lorg/codeaurora/ims/ImsSubController;->mSimultStackCount:I

    if-ge v2, v3, :cond_3

    .line 353
    sget-object v3, Lorg/codeaurora/ims/ImsSubController;->mStackStatus:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    aput-boolean v3, v1, v2

    .line 352
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 356
    .end local v2    # "i":I
    :cond_3
    iget-object v2, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    if-nez v2, :cond_4

    .line 357
    const-string v2, "handleSubConfigChanged ar.userObj is null"

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 358
    return-void

    .line 361
    :cond_4
    iget-object v2, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSubController;->notifyStackConfigChanged([ZI)V

    .line 362
    .end local v0    # "config":Lorg/codeaurora/ims/ImsSubConfigDetails;
    .end local v1    # "activeStacks":[Z
    goto :goto_1

    .line 363
    :cond_5
    const-string v0, "ar.result and ar.exception are null"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 365
    :goto_1
    return-void
.end method

.method private handleSubConfigException(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "exception"    # Ljava/lang/Throwable;

    .line 323
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-static {v1}, Lorg/codeaurora/telephony/utils/Preconditions;->checkArgument(Z)V

    .line 324
    move-object v1, p1

    check-cast v1, Lorg/codeaurora/ims/ImsRilException;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsRilException;->getErrorCode()I

    move-result v1

    .line 325
    .local v1, "errorCode":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSubConfigException error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 326
    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 327
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsSubController;->mIsDsdv:Z

    .line 331
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSubController;->initSubscriptionStatus()V

    goto :goto_1

    .line 333
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled error code : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 335
    :goto_1
    return-void
.end method

.method private initSubscriptionStatus()V
    .locals 3

    .line 631
    const/4 v0, 0x0

    sput v0, Lorg/codeaurora/ims/ImsSubController;->mSimultStackCount:I

    .line 632
    const/4 v1, 0x0

    sput-object v1, Lorg/codeaurora/ims/ImsSubController;->mStackStatus:Ljava/util/List;

    .line 634
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 635
    const-string v0, "initSubscriptionStatus: [Multi-sim] Using RAF and DDS to decide IMS Sub"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 636
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSubController;->handleRafInfo()V

    goto :goto_0

    .line 639
    :cond_0
    const-string v1, "initSubscriptionStatus: Not multi-sim."

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 640
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsSubController;->mIsDsdv:Z

    .line 641
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsSubController;->updateActiveImsStackForPhoneId(I)V

    .line 643
    :goto_0
    return-void
.end method

.method private isDisposed()Z
    .locals 1

    .line 779
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isDsdsTransitionFeatureSupported()Z
    .locals 8

    .line 395
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mSenderRxrs:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 396
    invoke-static {}, Lorg/codeaurora/ims/ImsSubController;->getDefaultPhoneId()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v2, 0xe

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->isFeatureSupported(I)Z

    move-result v0

    goto :goto_0

    .line 397
    :cond_0
    move v0, v1

    :goto_0
    nop

    .line 398
    .local v0, "isDsdsTransitionSupported":Z
    if-nez v0, :cond_1

    .line 399
    return v1

    .line 401
    :cond_1
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSubController;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getBasebandVersion()Ljava/lang/String;

    move-result-object v2

    .line 402
    .local v2, "basebandVersion":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BasebandVersion string: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 403
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 404
    return v1

    .line 407
    :cond_2
    const-string v3, "(?<=\\d)"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 408
    .local v3, "output":[Ljava/lang/String;
    array-length v4, v3

    if-gtz v4, :cond_3

    .line 409
    return v1

    .line 411
    :cond_3
    aget-object v4, v3, v1

    aget-object v5, v3, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v4

    .line 412
    .local v4, "value":I
    aget-object v5, v3, v1

    const-string v7, "MPSS.DE."

    invoke-direct {p0, v5, v7}, Lorg/codeaurora/ims/ImsSubController;->containsModemVersion(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 413
    const/4 v5, 0x5

    invoke-direct {p0, v4, v5}, Lorg/codeaurora/ims/ImsSubController;->isSupportedModemVersion(II)Z

    move-result v5

    if-eqz v5, :cond_4

    move v1, v6

    goto :goto_1

    :cond_4
    nop

    .line 412
    :goto_1
    return v1
.end method

.method private isMultiModeSupported(J)Z
    .locals 4
    .param p1, "nRatMask"    # J

    .line 698
    const-wide/16 v0, 0x1000

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isSupportedModemVersion(II)Z
    .locals 1
    .param p1, "modemVersion"    # I
    .param p2, "supportedModemVersion"    # I

    .line 423
    if-lt p1, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private notifyOnMultiSimConfigChanged(II)V
    .locals 2
    .param p1, "prevModemCount"    # I
    .param p2, "activeModemCount"    # I

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyOnMultiSimConfigChanged: prevModemCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " activeModemCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 314
    if-ne p1, p2, :cond_0

    .line 315
    return-void

    .line 317
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mOnMultiSimConfigChangedListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsSubController$OnMultiSimConfigChanged;

    .line 318
    .local v1, "listener":Lorg/codeaurora/ims/ImsSubController$OnMultiSimConfigChanged;
    invoke-interface {v1, p1, p2}, Lorg/codeaurora/ims/ImsSubController$OnMultiSimConfigChanged;->onMultiSimConfigChanged(II)V

    .line 319
    .end local v1    # "listener":Lorg/codeaurora/ims/ImsSubController$OnMultiSimConfigChanged;
    goto :goto_0

    .line 320
    :cond_1
    return-void
.end method

.method private notifyStackConfigChanged([ZI)V
    .locals 2
    .param p1, "activeStacks"    # [Z
    .param p2, "phoneId"    # I

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyStackConfigChanged: activeStacks:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mStackConfigListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsSubController$ImsStackConfigListener;

    .line 307
    .local v1, "listener":Lorg/codeaurora/ims/ImsSubController$ImsStackConfigListener;
    invoke-interface {v1, p1, p2}, Lorg/codeaurora/ims/ImsSubController$ImsStackConfigListener;->onStackConfigChanged([ZI)V

    .line 308
    .end local v1    # "listener":Lorg/codeaurora/ims/ImsSubController$ImsStackConfigListener;
    goto :goto_0

    .line 309
    :cond_0
    return-void
.end method

.method private registerForRadioEvents(I)V
    .locals 6
    .param p1, "phoneId"    # I

    .line 514
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mTm:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto/16 :goto_2

    .line 520
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mSenderRxrs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsSenderRxr;

    .line 521
    .local v0, "ci":Lorg/codeaurora/ims/ImsSenderRxr;
    if-nez v0, :cond_1

    .line 522
    const-string v1, "registerForRadioEvents: ImsSenderRxr is null"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 523
    return-void

    .line 526
    :cond_1
    const/4 v2, 0x0

    if-nez p1, :cond_2

    move v3, v1

    goto :goto_0

    :cond_2
    move v3, v2

    .line 527
    .local v3, "isPrimarySubscription":Z
    :goto_0
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->getRadioState()Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 528
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->getRadioState()Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    move-result-object v4

    invoke-virtual {v4}, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_3

    move v2, v1

    goto :goto_1

    :cond_3
    nop

    .line 529
    .local v2, "isRadioAvailable":Z
    :goto_1
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v1, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForImsSubConfigChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 530
    if-eqz v2, :cond_4

    .line 531
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->getImsSubConfig(Landroid/os/Message;)V

    .line 536
    :cond_4
    if-nez v3, :cond_5

    .line 537
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerForRadioEvents: phoneId: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " is not primary subscription."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 539
    return-void

    .line 542
    :cond_5
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    .line 543
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 542
    const/4 v5, 0x7

    invoke-virtual {v0, v1, v5, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForMultiSimVoiceCapabilityChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 544
    if-eqz v2, :cond_6

    .line 545
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    .line 546
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 545
    const/16 v5, 0x8

    invoke-virtual {v1, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queryMultiSimVoiceCapability(Landroid/os/Message;)V

    .line 548
    :cond_6
    return-void

    .line 515
    .end local v0    # "ci":Lorg/codeaurora/ims/ImsSenderRxr;
    .end local v2    # "isRadioAvailable":Z
    .end local v3    # "isPrimarySubscription":Z
    :cond_7
    :goto_2
    const-string v0, "registerForRadioEvents: Single SIM mode"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 516
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSubController;->initSubscriptionStatus()V

    .line 517
    return-void
.end method

.method private switchToMultiSim(II)V
    .locals 3
    .param p1, "prevModemCount"    # I
    .param p2, "activeModemCount"    # I

    .line 850
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 851
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, v0}, Lorg/codeaurora/ims/ImsSubController;->createImsSenderRxr(Landroid/content/Context;I)V

    .line 852
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsSubController;->mSenderRxrs:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-direct {p0, v1, v0, v2}, Lorg/codeaurora/ims/ImsSubController;->createImsServiceSub(Landroid/content/Context;ILorg/codeaurora/ims/ImsSenderRxr;)V

    .line 850
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 854
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private switchToSingleSim(II)V
    .locals 2
    .param p1, "prevModemCount"    # I
    .param p2, "activeModemCount"    # I

    .line 830
    add-int/lit8 v0, p1, -0x1

    .local v0, "i":I
    :goto_0
    if-lt v0, p2, :cond_0

    .line 831
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mServiceSubs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsServiceSub;->dispose()V

    .line 832
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mServiceSubs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 833
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsSubController;->disposeImsSenderRxr(I)V

    .line 830
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 835
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private updateActiveImsStackForPhoneId(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 648
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSubController;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 649
    const-string v0, "updateActiveImsStackForPhoneId return as ImsSubController is disposed"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 650
    return-void

    .line 653
    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 654
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switchImsPhone: Invalid phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 655
    return-void

    .line 658
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mActiveStacks:[Z

    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 659
    if-ne v0, p1, :cond_2

    .line 660
    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    goto :goto_1

    .line 662
    :cond_2
    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    .line 658
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 666
    .end local v0    # "i":I
    :cond_3
    invoke-direct {p0, v1, p1}, Lorg/codeaurora/ims/ImsSubController;->notifyStackConfigChanged([ZI)V

    .line 667
    return-void
.end method

.method private updateActiveImsStackForSubId(I)V
    .locals 3
    .param p1, "ddsSubId"    # I

    .line 672
    const/4 v0, 0x0

    .line 678
    .local v0, "phoneId":I
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 679
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v0

    goto :goto_0

    .line 682
    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result p1

    .line 684
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 685
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v0

    .line 689
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateActiveImsStackForSubId: new DDS = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 690
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsSubController;->updateActiveImsStackForPhoneId(I)V

    .line 691
    return-void
.end method

.method private updateStackConfig(IZ)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "isEnabled"    # Z

    .line 578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateStackConfig phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIsDsdv : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/codeaurora/ims/ImsSubController;->mIsDsdv:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 581
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsSubController;->mIsDsdv:Z

    const-string v1, "updateStackConfig nothing to update"

    if-eqz v0, :cond_3

    .line 582
    sget-object v0, Lorg/codeaurora/ims/ImsSubController;->mStackStatus:Ljava/util/List;

    if-nez v0, :cond_0

    .line 583
    const-string v0, "updateStackConfig Stacks are not yet initialized"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 584
    return-void

    .line 587
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, p2, :cond_1

    .line 588
    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 589
    return-void

    .line 592
    :cond_1
    const/4 v0, 0x6

    new-array v0, v0, [Z

    .line 593
    .local v0, "activeStacks":[Z
    sget-object v1, Lorg/codeaurora/ims/ImsSubController;->mStackStatus:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 594
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget v2, Lorg/codeaurora/ims/ImsSubController;->mSimultStackCount:I

    if-ge v1, v2, :cond_2

    .line 595
    sget-object v2, Lorg/codeaurora/ims/ImsSubController;->mStackStatus:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    aput-boolean v2, v0, v1

    .line 594
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    :cond_2
    goto :goto_1

    .line 600
    .end local v0    # "activeStacks":[Z
    :cond_3
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsSubController;->mIsReceiverRegistered:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 601
    const-string v0, "updateStackConfig: unregistering BroadcastReceiver"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 602
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsSubController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 603
    iput-boolean v2, p0, Lorg/codeaurora/ims/ImsSubController;->mIsReceiverRegistered:Z

    .line 606
    :cond_4
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mActiveStacks:[Z

    aget-boolean v3, v0, p1

    if-ne v3, p2, :cond_5

    .line 607
    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 608
    return-void

    .line 611
    :cond_5
    if-nez p2, :cond_6

    .line 620
    iput v2, p0, Lorg/codeaurora/ims/ImsSubController;->mNumMultiModeStacks:I

    .line 623
    :cond_6
    aput-boolean p2, v0, p1

    .line 624
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mActiveStacks:[Z

    .line 626
    .restart local v0    # "activeStacks":[Z
    :goto_1
    invoke-direct {p0, v0, p1}, Lorg/codeaurora/ims/ImsSubController;->notifyStackConfigChanged([ZI)V

    .line 627
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .line 857
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSubController;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 858
    const-string v0, "dispose: returning as already disposed"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 859
    return-void

    .line 861
    :cond_0
    const-string v0, "dispose ImsSubController, unregistering handler and listeners"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 862
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mMultiSimConfigChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 863
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mServiceSubs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsServiceSub;

    .line 864
    .local v1, "sub":Lorg/codeaurora/ims/ImsServiceSub;
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsServiceSub;->dispose()V

    .line 865
    .end local v1    # "sub":Lorg/codeaurora/ims/ImsServiceSub;
    goto :goto_0

    .line 866
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mSenderRxrs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsSenderRxr;

    .line 867
    .local v1, "senderRxr":Lorg/codeaurora/ims/ImsSenderRxr;
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 868
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForNotAvailable(Landroid/os/Handler;)V

    .line 869
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForImsServiceUp(Landroid/os/Handler;)V

    .line 870
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForImsServiceDown(Landroid/os/Handler;)V

    .line 871
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForImsSubConfigChanged(Landroid/os/Handler;)V

    .line 872
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForMultiSimVoiceCapabilityChanged(Landroid/os/Handler;)V

    .line 873
    .end local v1    # "senderRxr":Lorg/codeaurora/ims/ImsSenderRxr;
    goto :goto_1

    .line 874
    :cond_2
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsSubController;->mIsReceiverRegistered:Z

    if-eqz v0, :cond_3

    .line 875
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 877
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mTm:Landroid/telephony/TelephonyManager;

    .line 878
    iput-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    .line 879
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mServiceSubs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 880
    iput-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mServiceSubs:Ljava/util/List;

    .line 881
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mSenderRxrs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 882
    iput-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mSenderRxrs:Ljava/util/List;

    .line 883
    iput-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 884
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mStackConfigListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 885
    iput-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mStackConfigListeners:Ljava/util/List;

    .line 886
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mOnMultiSimConfigChangedListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 887
    iput-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mOnMultiSimConfigChangedListeners:Ljava/util/List;

    .line 888
    iput-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 889
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 890
    iput-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mListeners:Ljava/util/List;

    .line 891
    return-void
.end method

.method public getActiveModemCount()I
    .locals 1

    .line 229
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v0

    return v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 253
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getServiceSub(I)Lorg/codeaurora/ims/ImsServiceSub;
    .locals 1
    .param p1, "phoneId"    # I

    .line 787
    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mServiceSubs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 788
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mServiceSubs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsServiceSub;

    return-object v0

    .line 790
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getServiceSubs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ImsServiceSub;",
            ">;"
        }
    .end annotation

    .line 783
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mServiceSubs:Ljava/util/List;

    return-object v0
.end method

.method public isDsdv()Z
    .locals 1

    .line 300
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsSubController;->mIsDsdv:Z

    return v0
.end method

.method public isMultiSimEnabled()Z
    .locals 2

    .line 225
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsSubController;->getActiveModemCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public registerListener(Lorg/codeaurora/ims/ImsSubController$ImsStackConfigListener;I)V
    .locals 2
    .param p1, "stackConfigListener"    # Lorg/codeaurora/ims/ImsSubController$ImsStackConfigListener;
    .param p2, "phoneId"    # I

    .line 122
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSubController;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    const-string v0, "returning as ImsSubController is disposed"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    return-void

    .line 126
    :cond_0
    if-eqz p1, :cond_2

    .line 129
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mStackConfigListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 130
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mStackConfigListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 132
    :cond_1
    const-string v0, "registerListener :: duplicate stackConfigListener!"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    :goto_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mActiveStacks:[Z

    invoke-direct {p0, v0, p2}, Lorg/codeaurora/ims/ImsSubController;->notifyStackConfigChanged([ZI)V

    .line 135
    return-void

    .line 127
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "stackConfigListener is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerListener(Lorg/codeaurora/ims/ImsSubController$ImsStateListener;)V
    .locals 2
    .param p1, "listener"    # Lorg/codeaurora/ims/ImsSubController$ImsStateListener;

    .line 263
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSubController;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    const-string v0, "registerListener, returning as isDisposed"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    return-void

    .line 267
    :cond_0
    if-eqz p1, :cond_2

    .line 270
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 271
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 273
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Duplicate listener "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    :goto_0
    return-void

    .line 268
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerListener(Lorg/codeaurora/ims/ImsSubController$OnMultiSimConfigChanged;)V
    .locals 2
    .param p1, "listener"    # Lorg/codeaurora/ims/ImsSubController$OnMultiSimConfigChanged;

    .line 162
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSubController;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    const-string v0, "returning as ImsSubController is disposed"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    return-void

    .line 166
    :cond_0
    if-eqz p1, :cond_2

    .line 169
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mOnMultiSimConfigChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 170
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mOnMultiSimConfigChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 172
    :cond_1
    const-string v0, "registerListener :: duplicate OnMultiSimConfigChanged listener!"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    :goto_0
    return-void

    .line 167
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "simConfigChangedListener is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setIsDsdv(Z)V
    .locals 0
    .param p1, "isDsdv"    # Z

    .line 248
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsSubController;->mIsDsdv:Z

    .line 249
    return-void
.end method

.method public unregisterListener(Lorg/codeaurora/ims/ImsSubController$ImsStackConfigListener;)Z
    .locals 2
    .param p1, "stackConfigListener"    # Lorg/codeaurora/ims/ImsSubController$ImsStackConfigListener;

    .line 145
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSubController;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    const-string v0, "returning as ImsSubController is disposed"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    const/4 v0, 0x0

    return v0

    .line 149
    :cond_0
    if-eqz p1, :cond_1

    .line 152
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mStackConfigListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 150
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "stackConfigListener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterListener(Lorg/codeaurora/ims/ImsSubController$ImsStateListener;)Z
    .locals 2
    .param p1, "listener"    # Lorg/codeaurora/ims/ImsSubController$ImsStateListener;

    .line 285
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSubController;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    const-string v0, "unregisterListener, returning as isDisposed"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 287
    const/4 v0, 0x0

    return v0

    .line 289
    :cond_0
    if-eqz p1, :cond_1

    .line 292
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 290
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterListener(Lorg/codeaurora/ims/ImsSubController$OnMultiSimConfigChanged;)Z
    .locals 2
    .param p1, "listener"    # Lorg/codeaurora/ims/ImsSubController$OnMultiSimConfigChanged;

    .line 184
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSubController;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    const-string v0, "returning as ImsSubController is disposed"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    const/4 v0, 0x0

    return v0

    .line 188
    :cond_0
    if-eqz p1, :cond_1

    .line 191
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mOnMultiSimConfigChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 189
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "simConfigChangedListener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
