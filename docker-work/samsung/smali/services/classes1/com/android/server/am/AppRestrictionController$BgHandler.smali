.class public Lcom/android/server/am/AppRestrictionController$BgHandler;
.super Landroid/os/Handler;
.source "AppRestrictionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppRestrictionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BgHandler"
.end annotation


# static fields
.field public static final MSG_APP_RESTRICTION_LEVEL_CHANGED:I = 0x1

.field public static final MSG_APP_STANDBY_BUCKET_CHANGED:I = 0x2

.field public static final MSG_BACKGROUND_RESTRICTION_CHANGED:I = 0x0

.field public static final MSG_CANCEL_REQUEST_BG_RESTRICTED:I = 0x9

.field public static final MSG_LOAD_RESTRICTION_SETTINGS:I = 0xa

.field public static final MSG_PERSIST_RESTRICTION_SETTINGS:I = 0xb

.field public static final MSG_REQUEST_BG_RESTRICTED:I = 0x4

.field public static final MSG_UID_ACTIVE:I = 0x6

.field public static final MSG_UID_GONE:I = 0x7

.field public static final MSG_UID_IDLE:I = 0x5

.field public static final MSG_UID_PROC_STATE_CHANGED:I = 0x8

.field public static final MSG_USER_INTERACTION_STARTED:I = 0x3


# instance fields
.field public final mInjector:Lcom/android/server/am/AppRestrictionController$Injector;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/android/server/am/AppRestrictionController$Injector;)V
    .registers 3

    .line 3041
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3042
    iput-object p2, p0, Lcom/android/server/am/AppRestrictionController$BgHandler;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 3047
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$BgHandler;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    .line 3048
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppRestrictionController()Lcom/android/server/am/AppRestrictionController;

    move-result-object p0

    .line 3049
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_8e

    goto/16 :goto_8c

    .line 3086
    :pswitch_f
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->persistToXml(I)V

    goto/16 :goto_8c

    .line 3083
    :pswitch_18
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    invoke-virtual {p0, v2}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->loadFromXml(Z)V

    goto/16 :goto_8c

    .line 3072
    :pswitch_1f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/AppRestrictionController;->handleCancelRequestBgRestricted(Ljava/lang/String;I)V

    goto :goto_8c

    .line 3075
    :pswitch_29
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/AppRestrictionController;->handleUidProcStateChanged(II)V

    goto :goto_8c

    .line 3079
    :pswitch_31
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    if-ne v3, v2, :cond_38

    move v1, v2

    :cond_38
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/AppRestrictionController;->handleUidInactive(IZ)V

    .line 3080
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRestrictionController;->handleUidGone(I)V

    goto :goto_8c

    .line 3069
    :pswitch_41
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRestrictionController;->handleUidActive(I)V

    goto :goto_8c

    .line 3066
    :pswitch_47
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    if-ne p1, v2, :cond_4e

    move v1, v2

    :cond_4e
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/AppRestrictionController;->handleUidInactive(IZ)V

    goto :goto_8c

    .line 3063
    :pswitch_52
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/AppRestrictionController;->handleRequestBgRestricted(Ljava/lang/String;I)V

    goto :goto_8c

    .line 3060
    :pswitch_5c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, v0, p1}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$monUserInteractionStarted(Lcom/android/server/am/AppRestrictionController;Ljava/lang/String;I)V

    goto :goto_8c

    .line 3057
    :pswitch_66
    iget v0, p1, Landroid/os/Message;->arg2:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, v0, v1, p1}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$mhandleAppStandbyBucketChanged(Lcom/android/server/am/AppRestrictionController;ILjava/lang/String;I)V

    goto :goto_8c

    .line 3054
    :pswitch_72
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v0, v1, p1}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$mdispatchAppRestrictionLevelChanges(Lcom/android/server/am/AppRestrictionController;ILjava/lang/String;I)V

    goto :goto_8c

    .line 3051
    :pswitch_7e
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget p1, p1, Landroid/os/Message;->arg2:I

    if-ne p1, v2, :cond_89

    move v1, v2

    :cond_89
    invoke-static {p0, v0, v3, v1}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$mhandleBackgroundRestrictionChanged(Lcom/android/server/am/AppRestrictionController;ILjava/lang/String;Z)V

    :goto_8c
    return-void

    nop

    :pswitch_data_8e
    .packed-switch 0x0
        :pswitch_7e
        :pswitch_72
        :pswitch_66
        :pswitch_5c
        :pswitch_52
        :pswitch_47
        :pswitch_41
        :pswitch_31
        :pswitch_29
        :pswitch_1f
        :pswitch_18
        :pswitch_f
    .end packed-switch
.end method
