.class public Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DisplayHomeButtonHandler"
.end annotation


# instance fields
.field public final mDisplayId:I

.field public mHomeConsumed:Z

.field public mHomeDoubleTapPending:Z

.field public final mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

.field public mHomePressed:Z

.field public final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method public static synthetic $r8$lambda$5rQKs73-nKRT-vY-vVSg3sRPCFY(Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->lambda$handleHomeButton$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$K-dmiMJPQbkb738uA93Cj4QOFi0(Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->handleDoubleTapOnHome()V

    return-void
.end method

.method public static synthetic $r8$lambda$KxnUlZDq6t7g4RBS3VSt7dV4pjo(Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;Landroid/view/KeyEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->lambda$handleHomeButton$2(Landroid/view/KeyEvent;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayId(Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;)I
    .registers 1

    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mDisplayId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHomeDoubleTapPending(Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomeDoubleTapPending:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmHomeDoubleTapPending(Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomeDoubleTapPending:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManager;I)V
    .registers 3

    .line 1990
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1980
    new-instance p1, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler$1;

    invoke-direct {p1, p0}, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler$1;-><init>(Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;)V

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 1991
    iput p2, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mDisplayId:I

    return-void
.end method

.method private synthetic lambda$handleHomeButton$0()V
    .registers 2

    .line 2037
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mDisplayId:I

    invoke-virtual {v0, p0}, Lcom/android/server/policy/PhoneWindowManager;->handleShortPressOnHome(I)V

    return-void
.end method

.method private synthetic lambda$handleHomeButton$1()V
    .registers 2

    .line 2068
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mDisplayId:I

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->handleDoubleTapOnHome(I)V

    return-void
.end method

.method private synthetic lambda$handleHomeButton$2(Landroid/view/KeyEvent;)V
    .registers 5

    .line 2082
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    .line 2083
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v1

    .line 2082
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->handleLongPressOnHome(IJ)V

    return-void
.end method


# virtual methods
.method public final handleDoubleTapOnHome()V
    .registers 2

    const/4 v0, 0x0

    .line 2091
    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->handleDoubleTapOnHome(I)V

    return-void
.end method

.method public final handleDoubleTapOnHome(I)V
    .registers 4

    .line 2096
    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomeConsumed:Z

    if-eqz p1, :cond_5

    return-void

    .line 2099
    :cond_5
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p1}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$fgetmDoubleTapOnHomeBehavior(Lcom/android/server/policy/PhoneWindowManager;)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_36

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2e

    .line 2115
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No action or undefined behavior for double tap home: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$fgetmDoubleTapOnHomeBehavior(Lcom/android/server/policy/PhoneWindowManager;)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WindowManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d

    .line 2111
    :cond_2e
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomeConsumed:Z

    .line 2112
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mshowPictureInPictureMenuInternal(Lcom/android/server/policy/PhoneWindowManager;)V

    goto :goto_3d

    .line 2101
    :cond_36
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomeConsumed:Z

    .line 2107
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->toggleRecentApps()V

    :goto_3d
    return-void
.end method

.method public handleHomeButton(Landroid/os/IBinder;Landroid/view/KeyEvent;)I
    .registers 13

    .line 1995
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    move-result v0

    .line 1996
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    .line 1997
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_14

    move v2, v3

    goto :goto_15

    :cond_14
    move v2, v4

    .line 1998
    :goto_15
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v5

    .line 2000
    sget-boolean v6, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    const/4 v7, 0x2

    const-string v8, "WindowManager"

    if-eqz v6, :cond_3c

    new-array v6, v7, [Ljava/lang/Object;

    .line 2001
    iget v9, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mDisplayId:I

    .line 2002
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v4

    iget-boolean v9, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomePressed:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v6, v3

    const-string/jumbo v9, "handleHomeButton in display#%d mHomePressed = %b"

    .line 2001
    invoke-static {v9, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3c
    const/4 v6, -0x1

    if-nez v2, :cond_9c

    .line 2008
    iget p1, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mDisplayId:I

    if-nez p1, :cond_48

    .line 2009
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p1}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mcancelPreloadRecentApps(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 2012
    :cond_48
    iput-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomePressed:Z

    .line 2013
    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomeConsumed:Z

    if-eqz p1, :cond_51

    .line 2014
    iput-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomeConsumed:Z

    return v6

    :cond_51
    if-eqz v5, :cond_59

    const-string p0, "Ignoring HOME; event canceled."

    .line 2019
    invoke-static {v8, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    .line 2024
    :cond_59
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p1}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$fgetmDoubleTapOnHomeBehavior(Lcom/android/server/policy/PhoneWindowManager;)I

    move-result p1

    if-eqz p1, :cond_8d

    .line 2026
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p1}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$fgetmDoubleTapOnHomeBehavior(Lcom/android/server/policy/PhoneWindowManager;)I

    move-result p1

    if-ne p1, v7, :cond_6f

    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean p1, p1, Lcom/android/server/policy/PhoneWindowManager;->mPictureInPictureVisible:Z

    if-eqz p1, :cond_8d

    .line 2028
    :cond_6f
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p1}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$fgetmHandler(Lcom/android/server/policy/PhoneWindowManager;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2029
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomeDoubleTapPending:Z

    .line 2030
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p1}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$fgetmHandler(Lcom/android/server/policy/PhoneWindowManager;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 2031
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result p2

    int-to-long v0, p2

    .line 2030
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v6

    .line 2037
    :cond_8d
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p1}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$fgetmHandler(Lcom/android/server/policy/PhoneWindowManager;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v6

    .line 2041
    :cond_9c
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 2042
    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowManagerInternal;->getKeyInterceptionInfoFromToken(Landroid/os/IBinder;)Lcom/android/internal/policy/KeyInterceptionInfo;

    move-result-object p1

    if-eqz p1, :cond_cc

    .line 2046
    iget v2, p1, Lcom/android/internal/policy/KeyInterceptionInfo;->layoutParamsType:I

    const/16 v5, 0x7d9

    if-eq v2, v5, :cond_cb

    const/16 v5, 0x7f8

    if-ne v2, v5, :cond_b9

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 2048
    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowing()Z

    move-result v2

    if-eqz v2, :cond_b9

    goto :goto_cb

    .line 2052
    :cond_b9
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$sfgetWINDOW_TYPES_WHERE_HOME_DOESNT_WORK()[I

    move-result-object v2

    array-length v5, v2

    move v7, v4

    :goto_bf
    if-ge v7, v5, :cond_cc

    aget v8, v2, v7

    .line 2053
    iget v9, p1, Lcom/android/internal/policy/KeyInterceptionInfo;->layoutParamsType:I

    if-ne v9, v8, :cond_c8

    return v6

    :cond_c8
    add-int/lit8 v7, v7, 0x1

    goto :goto_bf

    :cond_cb
    :goto_cb
    return v4

    :cond_cc
    if-nez v1, :cond_102

    .line 2062
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomePressed:Z

    .line 2063
    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomeDoubleTapPending:Z

    if-eqz p1, :cond_f0

    .line 2064
    iput-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomeDoubleTapPending:Z

    .line 2065
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p1}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$fgetmHandler(Lcom/android/server/policy/PhoneWindowManager;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2071
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p1}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$fgetmHandler(Lcom/android/server/policy/PhoneWindowManager;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_11a

    .line 2075
    :cond_f0
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p1}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$fgetmDoubleTapOnHomeBehavior(Lcom/android/server/policy/PhoneWindowManager;)I

    move-result p1

    if-ne p1, v3, :cond_11a

    iget p1, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mDisplayId:I

    if-nez p1, :cond_11a

    .line 2077
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mpreloadRecentApps(Lcom/android/server/policy/PhoneWindowManager;)V

    goto :goto_11a

    .line 2079
    :cond_102
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result p1

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_11a

    if-nez v0, :cond_11a

    .line 2082
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p1}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$fgetmHandler(Lcom/android/server/policy/PhoneWindowManager;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p2}, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;Landroid/view/KeyEvent;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_11a
    :goto_11a
    return v6
.end method

.method public final handleLongPressOnHome(IJ)V
    .registers 5

    .line 2122
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomeConsumed:Z

    if-eqz v0, :cond_5

    return-void

    .line 2127
    :cond_5
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManagerExt;->handleLongPressOnHomeWithPolicy(IJ)Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    .line 2128
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomeConsumed:Z

    :cond_12
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 2159
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mDisplayId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomePressed:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const-string/jumbo p0, "mDisplayId = %d, mHomePressed = %b"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
