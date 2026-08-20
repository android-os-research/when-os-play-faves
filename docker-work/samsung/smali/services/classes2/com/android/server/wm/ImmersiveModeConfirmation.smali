.class public Lcom/android/server/wm/ImmersiveModeConfirmation;
.super Ljava/lang/Object;
.source "ImmersiveModeConfirmation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/ImmersiveModeConfirmation$H;,
        Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;
    }
.end annotation


# static fields
.field public static final CONFIRMED:Ljava/lang/String; = "confirmed"

.field public static final DEBUG:Z = true

.field public static final DEBUG_SHOW_EVERY_TIME:Z = false

.field public static final IMMERSIVE_MODE_CONFIRMATION_WINDOW_TYPE:I = 0x7e1

.field public static final TAG:Ljava/lang/String; = "ImmersiveModeConfirmation"

.field public static sConfirmed:Z

.field public static sConfirmedForGesture:Z


# instance fields
.field public mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public mClingWindow:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

.field public final mConfirm:Ljava/lang/Runnable;

.field public final mContext:Landroid/content/Context;

.field public mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field public mCoverState:Z

.field public final mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

.field public final mDisablePackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

.field public final mHandler:Lcom/android/server/wm/ImmersiveModeConfirmation$H;

.field public mListenerRegistered:Z

.field public mLockTaskState:I

.field public final mPanicThresholdMs:J

.field public mPanicTime:J

.field public final mShowDelayMs:J

.field public mVrModeEnabled:Z

.field public mWindowContext:Landroid/content/Context;

.field public mWindowManager:Landroid/view/WindowManager;

.field public final mWindowToken:Landroid/os/IBinder;


# direct methods
.method public static synthetic $r8$lambda$ICbbZVs2R0qOol8WyKC9G6rooOw(Lcom/android/server/wm/ImmersiveModeConfirmation;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->lambda$immersiveModeChangedLw$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$c_IuIW8sRCMS9A-2Lq1UpFHq9pE(Lcom/android/server/wm/ImmersiveModeConfirmation;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->lambda$showOkButton$1()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/wm/ImmersiveModeConfirmation;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCoverManager(Lcom/android/server/wm/ImmersiveModeConfirmation;)Lcom/samsung/android/cover/CoverManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCoverStateListener(Lcom/android/server/wm/ImmersiveModeConfirmation;)Lcom/samsung/android/cover/CoverManager$StateListener;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayPolicy(Lcom/android/server/wm/ImmersiveModeConfirmation;)Lcom/android/server/wm/DisplayPolicy;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/wm/ImmersiveModeConfirmation;)Lcom/android/server/wm/ImmersiveModeConfirmation$H;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/wm/ImmersiveModeConfirmation$H;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmListenerRegistered(Lcom/android/server/wm/ImmersiveModeConfirmation;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mListenerRegistered:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmCoverState(Lcom/android/server/wm/ImmersiveModeConfirmation;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mCoverState:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmListenerRegistered(Lcom/android/server/wm/ImmersiveModeConfirmation;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mListenerRegistered:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetBubbleLayoutParams(Lcom/android/server/wm/ImmersiveModeConfirmation;)Landroid/widget/FrameLayout$LayoutParams;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->getBubbleLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhandleHide(Lcom/android/server/wm/ImmersiveModeConfirmation;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->handleHide()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleShow(Lcom/android/server/wm/ImmersiveModeConfirmation;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ImmersiveModeConfirmation;->handleShow(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetsConfirmed()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/wm/ImmersiveModeConfirmation;->sConfirmed:Z

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetsConfirmedForGesture()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/wm/ImmersiveModeConfirmation;->sConfirmedForGesture:Z

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfputsConfirmed(Z)V
    .registers 1

    sput-boolean p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->sConfirmed:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfputsConfirmedForGesture(Z)V
    .registers 1

    sput-boolean p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->sConfirmedForGesture:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$smsaveGestureSetting(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->saveGestureSetting(Landroid/content/Context;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smsaveSetting(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->saveSetting(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;ZLcom/android/server/wm/DisplayPolicy;)V
    .registers 9

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mWindowToken:Landroid/os/IBinder;

    const/4 v0, 0x0

    .line 133
    iput v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mLockTaskState:I

    .line 786
    new-instance v1, Lcom/android/server/wm/ImmersiveModeConfirmation$1;

    invoke-direct {v1, p0}, Lcom/android/server/wm/ImmersiveModeConfirmation$1;-><init>(Lcom/android/server/wm/ImmersiveModeConfirmation;)V

    iput-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mConfirm:Ljava/lang/Runnable;

    const/4 v1, 0x1

    .line 976
    iput-boolean v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mCoverState:Z

    .line 977
    iput-boolean v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mListenerRegistered:Z

    .line 979
    new-instance v0, Lcom/android/server/wm/ImmersiveModeConfirmation$2;

    invoke-direct {v0, p0}, Lcom/android/server/wm/ImmersiveModeConfirmation$2;-><init>(Lcom/android/server/wm/ImmersiveModeConfirmation;)V

    iput-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    .line 139
    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    .line 140
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v1

    .line 141
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    if-nez v2, :cond_33

    goto :goto_37

    .line 142
    :cond_33
    invoke-virtual {v1, v0}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v1

    :goto_37
    iput-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    .line 143
    new-instance v0, Lcom/android/server/wm/ImmersiveModeConfirmation$H;

    invoke-direct {v0, p0, p2}, Lcom/android/server/wm/ImmersiveModeConfirmation$H;-><init>(Lcom/android/server/wm/ImmersiveModeConfirmation;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/wm/ImmersiveModeConfirmation$H;

    .line 144
    invoke-virtual {p0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->getNavBarExitDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x3

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mShowDelayMs:J

    .line 145
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x10e00a2

    .line 146
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-long v0, p2

    iput-wide v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mPanicThresholdMs:J

    .line 147
    iput-boolean p3, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mVrModeEnabled:Z

    .line 151
    iput-object p4, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 152
    new-instance p2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x1070196

    .line 153
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 152
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mDisablePackages:Ljava/util/List;

    return-void
.end method

.method private synthetic lambda$immersiveModeChangedLw$0()V
    .registers 3

    .line 264
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iget-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/cover/CoverManager;->unregisterListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    const/4 v0, 0x0

    .line 265
    iput-boolean v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mListenerRegistered:Z

    return-void
.end method

.method private synthetic lambda$showOkButton$1()V
    .registers 1

    .line 932
    iget-object p0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    if-eqz p0, :cond_7

    .line 933
    invoke-static {p0}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->-$$Nest$mupdateLayout(Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;)V

    :cond_7
    return-void
.end method

.method public static loadGestureSetting(ILandroid/content/Context;)Z
    .registers 7

    .line 943
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadGestureSetting() currentUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ImmersiveModeConfirmation"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    sget-boolean p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->sConfirmedForGesture:Z

    const/4 v1, 0x0

    .line 945
    sput-boolean v1, Lcom/android/server/wm/ImmersiveModeConfirmation;->sConfirmedForGesture:Z

    const/4 v2, 0x0

    .line 948
    :try_start_1c
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v3, "gesture_immersive_mode_confirmations"

    const/4 v4, -0x2

    invoke-static {p1, v3, v4}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string p1, "confirmed"

    .line 951
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    sput-boolean p1, Lcom/android/server/wm/ImmersiveModeConfirmation;->sConfirmedForGesture:Z

    .line 952
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loaded sConfirmedForGesture="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/server/wm/ImmersiveModeConfirmation;->sConfirmedForGesture:Z

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catchall {:try_start_1c .. :try_end_45} :catchall_46

    goto :goto_5b

    :catchall_46
    move-exception p1

    .line 954
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error loading gesture confirmations, value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 956
    :goto_5b
    sget-boolean p1, Lcom/android/server/wm/ImmersiveModeConfirmation;->sConfirmedForGesture:Z

    if-eq p1, p0, :cond_60

    const/4 v1, 0x1

    :cond_60
    return v1
.end method

.method public static loadSetting(ILandroid/content/Context;)Z
    .registers 8

    .line 164
    sget-boolean v0, Lcom/android/server/wm/ImmersiveModeConfirmation;->sConfirmed:Z

    const/4 v1, 0x0

    .line 165
    sput-boolean v1, Lcom/android/server/wm/ImmersiveModeConfirmation;->sConfirmed:Z

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 166
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v1

    const-string p0, "loadSetting() currentUserId=%d"

    invoke-static {p0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "ImmersiveModeConfirmation"

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 169
    :try_start_1a
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v4, "immersive_mode_confirmations"

    const/4 v5, -0x2

    invoke-static {p1, v4, v5}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "confirmed"

    .line 172
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    sput-boolean p1, Lcom/android/server/wm/ImmersiveModeConfirmation;->sConfirmed:Z

    .line 173
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loaded sConfirmed="

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/android/server/wm/ImmersiveModeConfirmation;->sConfirmed:Z

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catchall {:try_start_1a .. :try_end_43} :catchall_44

    goto :goto_59

    :catchall_44
    move-exception p1

    .line 175
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error loading confirmations, value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 177
    :goto_59
    sget-boolean p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->sConfirmed:Z

    if-eq p0, v0, :cond_5e

    move v1, v2

    :cond_5e
    return v1
.end method

.method public static saveGestureSetting(Landroid/content/Context;)V
    .registers 5

    const-string v0, "ImmersiveModeConfirmation"

    const-string/jumbo v1, "saveGestureSetting()"

    .line 960
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    :try_start_8
    sget-boolean v1, Lcom/android/server/wm/ImmersiveModeConfirmation;->sConfirmedForGesture:Z

    if-eqz v1, :cond_f

    const-string v1, "confirmed"

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    .line 963
    :goto_10
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "gesture_immersive_mode_confirmations"

    const/4 v3, -0x2

    invoke-static {p0, v2, v1, v3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 966
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Saved gesture value="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_2f

    goto :goto_46

    :catchall_2f
    move-exception p0

    .line 968
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error saving gesture confirmations, sConfirmedForGesture="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/wm/ImmersiveModeConfirmation;->sConfirmedForGesture:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_46
    return-void
.end method

.method public static saveSetting(Landroid/content/Context;)V
    .registers 5

    const-string v0, "ImmersiveModeConfirmation"

    const-string/jumbo v1, "saveSetting()"

    .line 181
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :try_start_8
    sget-boolean v1, Lcom/android/server/wm/ImmersiveModeConfirmation;->sConfirmed:Z

    if-eqz v1, :cond_f

    const-string v1, "confirmed"

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    .line 184
    :goto_10
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "immersive_mode_confirmations"

    const/4 v3, -0x2

    invoke-static {p0, v2, v1, v3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 188
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Saved value="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_2f

    goto :goto_46

    :catchall_2f
    move-exception p0

    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error saving confirmations, sConfirmed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/wm/ImmersiveModeConfirmation;->sConfirmed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_46
    return-void
.end method


# virtual methods
.method public confirmCurrentPrompt()V
    .registers 3

    .line 295
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    if-eqz v0, :cond_12

    const-string v0, "ImmersiveModeConfirmation"

    const-string v1, "confirmCurrentPrompt()"

    .line 296
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/wm/ImmersiveModeConfirmation$H;

    iget-object p0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mConfirm:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_12
    return-void
.end method

.method public final getAccessibilityManager()Landroid/view/accessibility/AccessibilityManager;
    .registers 3

    .line 920
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-nez v0, :cond_10

    .line 921
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 924
    :cond_10
    iget-object p0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object p0
.end method

.method public final getBubbleLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .registers 3

    .line 357
    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    const/16 v1, 0x31

    invoke-direct {p0, v0, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    return-object p0
.end method

.method public final getClingWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .registers 8

    .line 330
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x7e1

    const v4, 0x1000120

    const/4 v5, -0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 338
    invoke-virtual {v6}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v1

    not-int v1, v1

    and-int/2addr v0, v1

    invoke-virtual {v6, v0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 340
    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v1, 0x20000010

    or-int/2addr v0, v1

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const-string v0, "ImmersiveModeConfirmation"

    .line 342
    invoke-virtual {v6, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x1030305

    .line 343
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 344
    invoke-virtual {p0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    iput-object p0, v6, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const/4 p0, 0x1

    .line 347
    iput p0, v6, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    return-object v6
.end method

.method public final getNavBarExitDuration()J
    .registers 3

    .line 159
    iget-object p0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    const v0, 0x10a0036

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    if-eqz p0, :cond_10

    .line 160
    invoke-virtual {p0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v0

    goto :goto_12

    :cond_10
    const-wide/16 v0, 0x0

    :goto_12
    return-wide v0
.end method

.method public final getOptionsForWindowContext(I)Landroid/os/Bundle;
    .registers 3

    const/4 p0, -0x1

    if-ne p1, p0, :cond_5

    const/4 p0, 0x0

    return-object p0

    .line 767
    :cond_5
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "root_display_area_id"

    .line 768
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public final getWindowManager(I)Landroid/view/WindowManager;
    .registers 6

    .line 734
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mWindowManager:Landroid/view/WindowManager;

    const/16 v1, 0x7e1

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mWindowContext:Landroid/content/Context;

    if-nez v0, :cond_b

    goto :goto_2b

    .line 744
    :cond_b
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ImmersiveModeConfirmation;->getOptionsForWindowContext(I)Landroid/os/Bundle;

    move-result-object p1

    .line 745
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    .line 747
    :try_start_13
    iget-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mWindowContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getWindowContextToken()Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    .line 748
    invoke-virtual {v3}, Landroid/content/Context;->getDisplayId()I

    move-result v3

    .line 747
    invoke-interface {v0, v2, v1, v3, p1}, Landroid/view/IWindowManager;->attachWindowContextToDisplayArea(Landroid/os/IBinder;IILandroid/os/Bundle;)Landroid/content/res/Configuration;
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_22} :catch_25

    .line 753
    iget-object p0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mWindowManager:Landroid/view/WindowManager;

    return-object p0

    :catch_25
    move-exception p0

    .line 750
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 736
    :cond_2b
    :goto_2b
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ImmersiveModeConfirmation;->getOptionsForWindowContext(I)Landroid/os/Bundle;

    move-result-object p1

    .line 737
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->createWindowContext(ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mWindowContext:Landroid/content/Context;

    .line 739
    const-class v0, Landroid/view/WindowManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mWindowManager:Landroid/view/WindowManager;

    return-object p1
.end method

.method public getWindowToken()Landroid/os/IBinder;
    .registers 1

    .line 374
    iget-object p0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mWindowToken:Landroid/os/IBinder;

    return-object p0
.end method

.method public final handleHide()V
    .registers 4

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleHide() mClingWindow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImmersiveModeConfirmation"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    if-eqz v0, :cond_4b

    const-string v0, "Hiding immersive mode confirmation"

    .line 308
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :try_start_21
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v0, -0x1

    .line 320
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->getWindowManager(I)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_32
    .catch Landroid/view/WindowManager$InvalidDisplayException; {:try_start_21 .. :try_end_32} :catch_36

    const/4 v0, 0x0

    .line 325
    iput-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    goto :goto_4b

    :catch_36
    move-exception p0

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to hide the immersive confirmation window because of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4b
    :goto_4b
    return-void
.end method

.method public final handleShow(I)V
    .registers 6

    const-string v0, "ImmersiveModeConfirmation"

    const-string v1, "Showing immersive mode confirmation"

    .line 773
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    new-instance v1, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    iget-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mConfirm:Ljava/lang/Runnable;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;-><init>(Lcom/android/server/wm/ImmersiveModeConfirmation;Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    .line 778
    invoke-virtual {p0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->getClingWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 780
    :try_start_16
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ImmersiveModeConfirmation;->getWindowManager(I)Landroid/view/WindowManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    invoke-interface {p1, p0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1f
    .catch Landroid/view/WindowManager$InvalidDisplayException; {:try_start_16 .. :try_end_1f} :catch_20

    goto :goto_35

    :catch_20
    move-exception p0

    .line 782
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fail to show the immersive confirmation window because of "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_35
    return-void
.end method

.method public hideImmersiveModeConfirmation()V
    .registers 3

    .line 998
    sget-boolean v0, Lcom/android/server/wm/ImmersiveModeConfirmation;->sConfirmed:Z

    if-nez v0, :cond_10

    .line 999
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/wm/ImmersiveModeConfirmation$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1000
    iget-object p0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/wm/ImmersiveModeConfirmation$H;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_10
    return-void
.end method

.method public immersiveModeChangedLw(IZZZLcom/android/server/wm/WindowState;)V
    .registers 8

    .line 229
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/wm/ImmersiveModeConfirmation$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const-string v0, "ImmersiveModeConfirmation"

    if-eqz p2, :cond_66

    .line 236
    iget-object p2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object p2, p2, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    .line 239
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayPolicyExt;->isNavigationGestureMode()Z

    move-result p2

    if-eqz p2, :cond_19

    sget-boolean p2, Lcom/android/server/wm/ImmersiveModeConfirmation;->sConfirmedForGesture:Z

    if-nez p2, :cond_4b

    goto :goto_1d

    :cond_19
    sget-boolean p2, Lcom/android/server/wm/ImmersiveModeConfirmation;->sConfirmed:Z

    if-nez p2, :cond_4b

    :goto_1d
    if-eqz p3, :cond_4b

    iget-boolean p2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mVrModeEnabled:Z

    if-nez p2, :cond_4b

    if-nez p4, :cond_4b

    iget-object p2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    .line 244
    invoke-static {p2}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_4b

    iget p2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mLockTaskState:I

    if-eq p2, v1, :cond_4b

    .line 248
    invoke-virtual {p0, p5}, Lcom/android/server/wm/ImmersiveModeConfirmation;->isImmersiveModeAvailable(Lcom/android/server/wm/WindowState;)Z

    move-result p2

    if-eqz p2, :cond_4b

    const-string p2, "immersiveModeChanged() SHOW"

    .line 252
    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object p2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/wm/ImmersiveModeConfirmation$H;

    invoke-virtual {p2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    .line 256
    iput p1, p2, Landroid/os/Message;->arg1:I

    .line 257
    iget-object p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/wm/ImmersiveModeConfirmation$H;

    iget-wide p3, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mShowDelayMs:J

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 260
    :cond_4b
    iget-object p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz p1, :cond_71

    iget-boolean p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mListenerRegistered:Z

    if-eqz p1, :cond_71

    sget-boolean p1, Lcom/android/server/wm/ImmersiveModeConfirmation;->sConfirmed:Z

    if-eqz p1, :cond_71

    sget-boolean p1, Lcom/android/server/wm/ImmersiveModeConfirmation;->sConfirmedForGesture:Z

    if-eqz p1, :cond_71

    .line 263
    iget-object p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/wm/ImmersiveModeConfirmation$H;

    new-instance p2, Lcom/android/server/wm/ImmersiveModeConfirmation$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/android/server/wm/ImmersiveModeConfirmation$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/ImmersiveModeConfirmation;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_71

    :cond_66
    const-string p1, "immersiveModeChanged() HIDE"

    .line 272
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object p0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/wm/ImmersiveModeConfirmation$H;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_71
    :goto_71
    return-void
.end method

.method public final isImmersiveModeAvailable(Lcom/android/server/wm/WindowState;)Z
    .registers 7

    .line 856
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    const-string v1, "ImmersiveModeConfirmation"

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    const-string p0, "Do nothing regarding immersiveModeConfirmation. clingWindow is not null."

    .line 857
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 861
    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mDisablePackages:Ljava/util/List;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 862
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Do nothing regarding immersiveModeConfirmation. disablePackage="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 863
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 862
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 866
    :cond_32
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x1

    if-lt v0, v3, :cond_c5

    .line 867
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x63

    if-le v0, v4, :cond_47

    goto/16 :goto_c5

    .line 872
    :cond_47
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result p1

    if-nez p1, :cond_57

    const-string p0, "Do nothing regarding immersiveModeConfirmation. Not fullscreen."

    .line 873
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 876
    :cond_57
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->IS_FACTORY_BINARY:Z

    if-nez p1, :cond_bf

    iget-object p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    .line 878
    invoke-static {p1}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_bf

    .line 879
    invoke-static {}, Landroid/os/FactoryTest;->isRunningFactoryApp()Z

    move-result p1

    if-eqz p1, :cond_6a

    goto :goto_bf

    .line 883
    :cond_6a
    invoke-virtual {p0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->isPreloadInstallComplete()Z

    move-result p1

    if-nez p1, :cond_76

    const-string p0, "Do nothing regarding immersiveModeConfirmation. Not preloadInstallComplete."

    .line 884
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 888
    :cond_76
    iget-boolean p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mCoverState:Z

    if-nez p1, :cond_80

    const-string p0, "Do nothing regarding immersiveModeConfirmation. coverClosed."

    .line 889
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 892
    :cond_80
    iget-object p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    .line 893
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "ultra_powersaving_mode"

    .line 892
    invoke-static {p1, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v3, :cond_91

    move p1, v3

    goto :goto_92

    :cond_91
    move p1, v2

    :goto_92
    if-eqz p1, :cond_9a

    const-string p0, "Do nothing regarding immersiveModeConfirmation. maxPowerSavingModeEnabled."

    .line 895
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 899
    :cond_9a
    invoke-virtual {p0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->getAccessibilityManager()Landroid/view/accessibility/AccessibilityManager;

    move-result-object p1

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityManager;->semIsAccessibilityServiceEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_ac

    const-string p0, "Do nothing regarding immersiveModeConfirmation. talkBackEnabled."

    .line 902
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 906
    :cond_ac
    invoke-virtual {p0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->getAccessibilityManager()Landroid/view/accessibility/AccessibilityManager;

    move-result-object p0

    const/16 p1, 0x20

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityManager;->semIsAccessibilityServiceEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_be

    const-string p0, "Do nothing regarding immersiveModeConfirmation. voiceAssistantEnabled."

    .line 909
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_be
    return v3

    :cond_bf
    :goto_bf
    const-string p0, "Do nothing regarding immersiveModeConfirmation. Factory test mode."

    .line 880
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 868
    :cond_c5
    :goto_c5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Do nothing regarding immersiveModeConfirmation. appWindow type="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 869
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 868
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public final isPreloadInstallComplete()Z
    .registers 2

    const-string/jumbo p0, "persist.sys.storage_preload"

    const-string v0, "2"

    .line 916
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public onLockTaskModeChangedLw(I)V
    .registers 2

    .line 847
    iput p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mLockTaskState:I

    return-void
.end method

.method public onPowerKeyDown(ZJZZ)Z
    .registers 11

    const/4 v0, 0x0

    if-nez p1, :cond_13

    .line 281
    iget-wide v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mPanicTime:J

    sub-long v1, p2, v1

    iget-wide v3, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mPanicThresholdMs:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_13

    .line 283
    iget-object p0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    if-nez p0, :cond_12

    const/4 v0, 0x1

    :cond_12
    return v0

    :cond_13
    if-eqz p1, :cond_1c

    if-eqz p4, :cond_1c

    if-nez p5, :cond_1c

    .line 287
    iput-wide p2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mPanicTime:J

    goto :goto_20

    :cond_1c
    const-wide/16 p1, 0x0

    .line 289
    iput-wide p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mPanicTime:J

    :goto_20
    return v0
.end method

.method public onSettingChanged(I)Z
    .registers 5

    .line 200
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->loadSetting(ILandroid/content/Context;)Z

    move-result v0

    .line 204
    iget-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/android/server/wm/ImmersiveModeConfirmation;->loadGestureSetting(ILandroid/content/Context;)Z

    move-result p1

    .line 209
    iget-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    .line 210
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicyExt;->isNavigationGestureMode()Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_23

    if-eqz p1, :cond_22

    .line 211
    sget-boolean v0, Lcom/android/server/wm/ImmersiveModeConfirmation;->sConfirmedForGesture:Z

    if-eqz v0, :cond_22

    .line 212
    iget-object p0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/wm/ImmersiveModeConfirmation$H;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_22
    return p1

    :cond_23
    if-eqz v0, :cond_2e

    .line 217
    sget-boolean p1, Lcom/android/server/wm/ImmersiveModeConfirmation;->sConfirmed:Z

    if-eqz p1, :cond_2e

    .line 218
    iget-object p0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/wm/ImmersiveModeConfirmation$H;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2e
    return v0
.end method

.method public onVrStateChangedLw(Z)V
    .registers 3

    .line 839
    iput-boolean p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mVrModeEnabled:Z

    if-eqz p1, :cond_10

    .line 841
    iget-object p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/wm/ImmersiveModeConfirmation$H;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 842
    iget-object p0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/wm/ImmersiveModeConfirmation$H;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_10
    return-void
.end method

.method public release()V
    .registers 3

    .line 195
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/wm/ImmersiveModeConfirmation$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 196
    iget-object p0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/wm/ImmersiveModeConfirmation$H;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public showOkButton()V
    .registers 3

    .line 928
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    if-eqz v0, :cond_1d

    const-string v0, "ImmersiveModeConfirmation"

    const-string/jumbo v1, "showOkButton()"

    .line 929
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mShowOkButton:Z

    .line 931
    invoke-static {v0}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->-$$Nest$fgetmClingHandler(Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/ImmersiveModeConfirmation$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/wm/ImmersiveModeConfirmation$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/ImmersiveModeConfirmation;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1d
    return-void
.end method

.method public systemReady()V
    .registers 3

    .line 990
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v0, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_19

    .line 991
    new-instance v0, Lcom/samsung/android/cover/CoverManager;

    iget-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 992
    iget-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/cover/CoverManager;->registerListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    const/4 v0, 0x1

    .line 993
    iput-boolean v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mListenerRegistered:Z

    :cond_19
    return-void
.end method
