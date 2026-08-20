.class public Landroid/widget/Toast;
.super Ljava/lang/Object;
.source "Toast.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Toast$CallbackBinder;,
        Landroid/widget/Toast$Callback;,
        Landroid/widget/Toast$TN;,
        Landroid/widget/Toast$Duration;
    }
.end annotation


# static fields
.field private static final blacklist CHANGE_TEXT_TOASTS_IN_THE_SYSTEM:J = 0x8cf3b87L

.field static final blacklist DEBUG:Z

.field public static final whitelist LENGTH_LONG:I = 0x1

.field public static final whitelist LENGTH_SHORT:I = 0x0

.field private static final blacklist MAX_LOOP_COUNT:I = 0x64

.field public static final whitelist SEM_DISPLAY_TYPE_DEFAULT:I = 0x0

.field public static final whitelist SEM_DISPLAY_TYPE_DEX:I = 0x1

.field public static final whitelist SEM_LENGTH_LONG_DOUBLE:I = 0x3e8

.field static final greylist-max-o TAG:Ljava/lang/String; = "Toast"

.field static final greylist-max-o localLOGV:Z

.field private static greylist-max-p sService:Landroid/app/INotificationManager;


# instance fields
.field private final blacklist mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/Toast$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mContext:Landroid/content/Context;

.field blacklist mCustomDisplayId:I

.field blacklist mDisplayContext:Landroid/content/Context;

.field greylist mDuration:I

.field private final blacklist mHandler:Landroid/os/Handler;

.field private blacklist mIsCustomToast:Z

.field private greylist-max-o mNextView:Landroid/view/View;

.field blacklist mNextViewForDex:Landroid/view/View;

.field final greylist-max-p mTN:Landroid/widget/Toast$TN;

.field private blacklist mText:Ljava/lang/CharSequence;

.field private final blacklist mToken:Landroid/os/Binder;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smgetService()Landroid/app/INotificationManager;
    .registers 1

    invoke-static {}, Landroid/widget/Toast;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 135
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Landroid/widget/Toast;->localLOGV:Z

    .line 136
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Landroid/widget/Toast;->DEBUG:Z

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 246
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    .line 247
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/Toast;->mDisplayContext:Landroid/content/Context;

    .line 233
    iput-object v0, p0, Landroid/widget/Toast;->mNextViewForDex:Landroid/view/View;

    .line 234
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Toast;->mIsCustomToast:Z

    .line 235
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/Toast;->mCustomDisplayId:I

    .line 254
    iput-object p1, p0, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    .line 255
    new-instance v4, Landroid/os/Binder;

    invoke-direct {v4}, Landroid/os/Binder;-><init>()V

    iput-object v4, p0, Landroid/widget/Toast;->mToken:Landroid/os/Binder;

    .line 256
    invoke-direct {p0, p2}, Landroid/widget/Toast;->getLooper(Landroid/os/Looper;)Landroid/os/Looper;

    move-result-object p2

    .line 257
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/widget/Toast;->mHandler:Landroid/os/Handler;

    .line 258
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Landroid/widget/Toast;->mCallbacks:Ljava/util/List;

    .line 259
    new-instance v0, Landroid/widget/Toast$TN;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object v1, v0

    move-object v2, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Landroid/widget/Toast$TN;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Binder;Ljava/util/List;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    .line 261
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105050f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/Toast$TN;->mY:I

    .line 263
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e012a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Landroid/widget/Toast$TN;->mGravity:I

    .line 265
    return-void
.end method

.method private blacklist checkGameHomeAllowList()Z
    .registers 8

    .line 1063
    const-string/jumbo v0, "sys.boot_completed"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Toast"

    const/4 v2, 0x0

    if-nez v0, :cond_18

    .line 1064
    const-string v0, "Boot is not completed yet. Don\'t read settings db."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    return v2

    .line 1068
    :cond_18
    iget-object v0, p0, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "game_no_interruption"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1071
    .local v0, "gameNoInterruption":I
    if-lez v0, :cond_75

    .line 1073
    iget-object v3, p0, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "game_no_interruption_white_list"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1076
    .local v3, "allowList":Ljava/lang/String;
    if-eqz v3, :cond_6f

    .line 1077
    iget-object v4, p0, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1079
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_57

    .line 1080
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GameNoInterruption mode. Show game toast. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    return v2

    .line 1083
    :cond_57
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GameNoInterruption mode. Block toast "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    const/4 v1, 0x1

    return v1

    .line 1087
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_6f
    const-string v4, "gameNoInterruption is on, but allowList is null."

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    return v2

    .line 1092
    .end local v3    # "allowList":Ljava/lang/String;
    :cond_75
    return v2
.end method

.method private blacklist getActivityContext(Landroid/content/Context;)Landroid/app/Activity;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 1155
    const/4 v0, 0x0

    .line 1156
    .local v0, "activity":Landroid/app/Activity;
    move-object v1, p1

    .line 1157
    .local v1, "tempContext":Landroid/content/Context;
    const/4 v2, 0x0

    .line 1159
    .local v2, "count":I
    :goto_3
    if-nez v0, :cond_24

    if-eqz v1, :cond_24

    const/16 v3, 0x64

    if-ge v2, v3, :cond_24

    .line 1160
    instance-of v3, v1, Landroid/app/Activity;

    if-eqz v3, :cond_13

    .line 1161
    move-object v0, v1

    check-cast v0, Landroid/app/Activity;

    goto :goto_21

    .line 1163
    :cond_13
    instance-of v3, v1, Landroid/content/ContextWrapper;

    if-eqz v3, :cond_1f

    move-object v3, v1

    check-cast v3, Landroid/content/ContextWrapper;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    goto :goto_20

    .line 1164
    :cond_1f
    const/4 v3, 0x0

    :goto_20
    move-object v1, v3

    .line 1166
    :goto_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1168
    :cond_24
    return-object v0
.end method

.method private blacklist getLooper(Landroid/os/Looper;)Landroid/os/Looper;
    .registers 4
    .param p1, "looper"    # Landroid/os/Looper;

    .line 268
    if-eqz p1, :cond_3

    .line 269
    return-object p1

    .line 271
    :cond_3
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    const-string v1, "Can\'t toast on a thread that has not called Looper.prepare()"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    return-object v0
.end method

.method private static greylist-max-p getService()Landroid/app/INotificationManager;
    .registers 1

    .line 839
    sget-object v0, Landroid/widget/Toast;->sService:Landroid/app/INotificationManager;

    if-eqz v0, :cond_5

    .line 840
    return-object v0

    .line 842
    :cond_5
    nop

    .line 843
    const-string/jumbo v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 842
    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    sput-object v0, Landroid/widget/Toast;->sService:Landroid/app/INotificationManager;

    .line 844
    return-object v0
.end method

.method private blacklist isDexDualModeEnabled(Landroid/content/Context;)Z
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .line 1140
    const/4 v0, 0x0

    .line 1142
    .local v0, "isDesktopDualMode":Z
    const-string v1, "desktopmode"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 1144
    .local v1, "desktopModeManager":Lcom/samsung/android/desktopmode/SemDesktopModeManager;
    if-eqz v1, :cond_22

    .line 1145
    invoke-virtual {v1}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v2

    .line 1146
    .local v2, "state":Lcom/samsung/android/desktopmode/SemDesktopModeState;
    if-eqz v2, :cond_20

    iget v3, v2, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_20

    .line 1147
    invoke-virtual {v2}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result v3

    const/16 v4, 0x66

    if-ne v3, v4, :cond_20

    const/4 v3, 0x1

    goto :goto_21

    :cond_20
    const/4 v3, 0x0

    :goto_21
    move v0, v3

    .line 1150
    .end local v2    # "state":Lcom/samsung/android/desktopmode/SemDesktopModeState;
    :cond_22
    sget-boolean v2, Landroid/widget/Toast;->localLOGV:Z

    if-eqz v2, :cond_3e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDexDualModeEnabled: isDesktopDualMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Toast"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    :cond_3e
    return v0
.end method

.method private blacklist isSpeg()Z
    .registers 5

    .line 277
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 280
    :cond_6
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 282
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_d

    return v1

    .line 284
    :cond_d
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 285
    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_1e

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->isSpeg(I)Z

    move-result v3

    if-eqz v3, :cond_1e

    const/4 v1, 0x1

    :cond_1e
    return v1
.end method

.method private blacklist isSystemRenderedTextToast()Z
    .registers 3

    .line 698
    const-wide/32 v0, 0x8cf3b87

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    if-nez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public static whitelist makeText(Landroid/content/Context;II)Landroid/widget/Toast;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I
    .param p2, "duration"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 794
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o makeText(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "duration"    # I

    .line 766
    const-wide/32 v0, 0x8cf3b87

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 767
    new-instance v0, Landroid/widget/Toast;

    invoke-direct {v0, p0, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    .line 768
    .local v0, "result":Landroid/widget/Toast;
    iput-object p2, v0, Landroid/widget/Toast;->mText:Ljava/lang/CharSequence;

    .line 769
    iput p3, v0, Landroid/widget/Toast;->mDuration:I

    .line 770
    return-object v0

    .line 772
    .end local v0    # "result":Landroid/widget/Toast;
    :cond_13
    new-instance v0, Landroid/widget/Toast;

    invoke-direct {v0, p0, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    .line 773
    .restart local v0    # "result":Landroid/widget/Toast;
    invoke-static {p0, p2}, Landroid/widget/ToastPresenter;->getTextToastView(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object v1

    .line 774
    .local v1, "v":Landroid/view/View;
    iput-object v1, v0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    .line 775
    iput p3, v0, Landroid/widget/Toast;->mDuration:I

    .line 777
    return-object v0
.end method

.method public static whitelist makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "duration"    # I

    .line 755
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method private blacklist semCreateDisplayContextForDex()Landroid/content/Context;
    .registers 7

    .line 1197
    const/4 v0, 0x0

    .line 1198
    .local v0, "displayContext":Landroid/content/Context;
    iget-object v1, p0, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    const-string v2, "display"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 1199
    .local v1, "dm":Landroid/hardware/display/DisplayManager;
    if-eqz v1, :cond_49

    .line 1200
    const-string v2, "com.samsung.android.hardware.display.category.DESKTOP"

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v2

    .line 1201
    .local v2, "displays":[Landroid/view/Display;
    array-length v3, v2

    if-lez v3, :cond_49

    const/4 v3, 0x0

    aget-object v4, v2, v3

    if-eqz v4, :cond_49

    .line 1202
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "show: createDisplayContext displays = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Toast"

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    iget-object v4, p0, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    aget-object v3, v2, v3

    invoke-virtual {v4, v3}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v3

    .line 1204
    .local v3, "displayContextTemp":Landroid/content/Context;
    if-eqz v3, :cond_49

    .line 1205
    new-instance v4, Landroid/view/ContextThemeWrapper;

    const v5, 0x103012b

    invoke-direct {v4, v3, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object v0, v4

    .line 1210
    .end local v2    # "displays":[Landroid/view/Display;
    .end local v3    # "displayContextTemp":Landroid/content/Context;
    :cond_49
    return-object v0
.end method

.method private blacklist semGetFocusInDesktopState(Z)Z
    .registers 9
    .param p1, "isDexDualMode"    # Z

    .line 1172
    const-string v0, "Toast"

    iget v1, p0, Landroid/widget/Toast;->mCustomDisplayId:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, -0x1

    if-eq v1, v4, :cond_c

    .line 1173
    if-ne v1, v3, :cond_39

    .line 1174
    return v2

    .line 1177
    :cond_c
    if-eqz p1, :cond_39

    .line 1178
    const/4 v1, 0x0

    .line 1181
    .local v1, "focusDisplayId":I
    :try_start_f
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v4

    .line 1182
    .local v4, "wm":Landroid/view/IWindowManager;
    invoke-interface {v4}, Landroid/view/IWindowManager;->getTopFocusedDisplayId()I

    move-result v5

    move v1, v5

    .line 1183
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getFocusInDesktopState: focusDisplayId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_2e} :catch_30

    .line 1186
    nop

    .end local v4    # "wm":Landroid/view/IWindowManager;
    goto :goto_36

    .line 1184
    :catch_30
    move-exception v4

    .line 1185
    .local v4, "ex":Landroid/os/RemoteException;
    const-string v5, "Unable to get focusedDisplayId"

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    .end local v4    # "ex":Landroid/os/RemoteException;
    :goto_36
    if-ne v1, v3, :cond_39

    .line 1189
    return v2

    .line 1193
    .end local v1    # "focusDisplayId":I
    :cond_39
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist semGetMessageFromTv(Landroid/view/View;)Ljava/lang/String;
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 1214
    if-eqz p1, :cond_1b

    .line 1215
    const v0, 0x102000b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1216
    .local v0, "tv":Landroid/view/View;
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_1b

    .line 1217
    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1218
    .local v1, "cs":Ljava/lang/CharSequence;
    if-eqz v1, :cond_1b

    .line 1219
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1223
    .end local v0    # "tv":Landroid/view/View;
    .end local v1    # "cs":Ljava/lang/CharSequence;
    :cond_1b
    const-string v0, ""

    return-object v0
.end method

.method public static whitelist semMakeAction(Landroid/content/Context;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/widget/Toast;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "duration"    # I
    .param p3, "action"    # Ljava/lang/CharSequence;
    .param p4, "listener"    # Landroid/view/View$OnClickListener;

    .line 1118
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist addCallback(Landroid/widget/Toast$Callback;)V
    .registers 4
    .param p1, "callback"    # Landroid/widget/Toast$Callback;

    .line 709
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    iget-object v0, p0, Landroid/widget/Toast;->mCallbacks:Ljava/util/List;

    monitor-enter v0

    .line 711
    :try_start_6
    iget-object v1, p0, Landroid/widget/Toast;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 712
    monitor-exit v0

    .line 713
    return-void

    .line 712
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public whitelist cancel()V
    .registers 4

    .line 490
    const-wide/32 v0, 0x8cf3b87

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    if-nez v0, :cond_1f

    .line 493
    :try_start_d
    invoke-static {}, Landroid/widget/Toast;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/Toast;->mToken:Landroid/os/Binder;

    invoke-interface {v0, v1, v2}, Landroid/app/INotificationManager;->cancelToast(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_1c} :catch_1d

    goto :goto_1e

    .line 494
    :catch_1d
    move-exception v0

    .line 496
    :goto_1e
    goto :goto_24

    .line 498
    :cond_1f
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    invoke-virtual {v0}, Landroid/widget/Toast$TN;->cancel()V

    .line 500
    :goto_24
    return-void
.end method

.method public whitelist getDuration()I
    .registers 2

    .line 567
    iget v0, p0, Landroid/widget/Toast;->mDuration:I

    return v0
.end method

.method public whitelist getGravity()I
    .registers 3

    .line 658
    invoke-direct {p0}, Landroid/widget/Toast;->isSystemRenderedTextToast()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 659
    const-string v0, "Toast"

    const-string v1, "getGravity() shouldn\'t be called on text toasts, the result may not reflect actual values."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    :cond_d
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iget v0, v0, Landroid/widget/Toast$TN;->mGravity:I

    return v0
.end method

.method public whitelist getHorizontalMargin()F
    .registers 3

    .line 601
    invoke-direct {p0}, Landroid/widget/Toast;->isSystemRenderedTextToast()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 602
    const-string v0, "Toast"

    const-string v1, "getHorizontalMargin() shouldn\'t be called on text toasts, the result may not reflect actual values."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    :cond_d
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iget v0, v0, Landroid/widget/Toast$TN;->mHorizontalMargin:F

    return v0
.end method

.method public whitelist getVerticalMargin()F
    .registers 3

    .line 617
    invoke-direct {p0}, Landroid/widget/Toast;->isSystemRenderedTextToast()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 618
    const-string v0, "Toast"

    const-string v1, "getVerticalMargin() shouldn\'t be called on text toasts, the result may not reflect actual values."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    :cond_d
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iget v0, v0, Landroid/widget/Toast$TN;->mVerticalMargin:F

    return v0
.end method

.method public whitelist getView()Landroid/view/View;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 548
    iget-object v0, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    return-object v0
.end method

.method public greylist getWindowParams()Landroid/view/WindowManager$LayoutParams;
    .registers 3

    .line 730
    const-wide/32 v0, 0x8cf3b87

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 731
    iget-object v0, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    if-eqz v0, :cond_14

    .line 733
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    invoke-static {v0}, Landroid/widget/Toast$TN;->-$$Nest$fgetmParams(Landroid/widget/Toast$TN;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    return-object v0

    .line 736
    :cond_14
    const/4 v0, 0x0

    return-object v0

    .line 740
    :cond_16
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    invoke-static {v0}, Landroid/widget/Toast$TN;->-$$Nest$fgetmParams(Landroid/widget/Toast$TN;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getXOffset()I
    .registers 3

    .line 674
    invoke-direct {p0}, Landroid/widget/Toast;->isSystemRenderedTextToast()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 675
    const-string v0, "Toast"

    const-string v1, "getXOffset() shouldn\'t be called on text toasts, the result may not reflect actual values."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    :cond_d
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iget v0, v0, Landroid/widget/Toast$TN;->mX:I

    return v0
.end method

.method public whitelist getYOffset()I
    .registers 3

    .line 690
    invoke-direct {p0}, Landroid/widget/Toast;->isSystemRenderedTextToast()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 691
    const-string v0, "Toast"

    const-string v1, "getYOffset() shouldn\'t be called on text toasts, the result may not reflect actual values."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    :cond_d
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iget v0, v0, Landroid/widget/Toast$TN;->mY:I

    return v0
.end method

.method public whitelist removeCallback(Landroid/widget/Toast$Callback;)V
    .registers 4
    .param p1, "callback"    # Landroid/widget/Toast$Callback;

    .line 719
    iget-object v0, p0, Landroid/widget/Toast;->mCallbacks:Ljava/util/List;

    monitor-enter v0

    .line 720
    :try_start_3
    iget-object v1, p0, Landroid/widget/Toast;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 721
    monitor-exit v0

    .line 722
    return-void

    .line 721
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public whitelist semSetPreferredDisplayType(I)V
    .registers 3
    .param p1, "displayId"    # I

    .line 1132
    const/4 v0, 0x1

    if-ne p1, v0, :cond_7

    .line 1133
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/Toast;->mCustomDisplayId:I

    goto :goto_a

    .line 1135
    :cond_7
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/Toast;->mCustomDisplayId:I

    .line 1137
    :goto_a
    return-void
.end method

.method public whitelist setDuration(I)V
    .registers 3
    .param p1, "duration"    # I

    .line 557
    iput p1, p0, Landroid/widget/Toast;->mDuration:I

    .line 558
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iput p1, v0, Landroid/widget/Toast$TN;->mDuration:I

    .line 559
    return-void
.end method

.method public whitelist setGravity(III)V
    .registers 6
    .param p1, "gravity"    # I
    .param p2, "xOffset"    # I
    .param p3, "yOffset"    # I

    .line 635
    invoke-direct {p0}, Landroid/widget/Toast;->isSystemRenderedTextToast()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 636
    const-string v0, "Toast"

    const-string/jumbo v1, "setGravity() shouldn\'t be called on text toasts, the values won\'t be used"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    :cond_e
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iput p1, v0, Landroid/widget/Toast$TN;->mGravity:I

    .line 639
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iput p2, v0, Landroid/widget/Toast$TN;->mX:I

    .line 640
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iput p3, v0, Landroid/widget/Toast$TN;->mY:I

    .line 642
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/Toast$TN;->mIsCustomOffset:Z

    .line 644
    return-void
.end method

.method public whitelist setMargin(FF)V
    .registers 5
    .param p1, "horizontalMargin"    # F
    .param p2, "verticalMargin"    # F

    .line 585
    invoke-direct {p0}, Landroid/widget/Toast;->isSystemRenderedTextToast()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 586
    const-string v0, "Toast"

    const-string/jumbo v1, "setMargin() shouldn\'t be called on text toasts, the values won\'t be used"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    :cond_e
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iput p1, v0, Landroid/widget/Toast$TN;->mHorizontalMargin:F

    .line 589
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iput p2, v0, Landroid/widget/Toast$TN;->mVerticalMargin:F

    .line 590
    return-void
.end method

.method public whitelist setText(I)V
    .registers 3
    .param p1, "resId"    # I

    .line 802
    iget-object v0, p0, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 803
    return-void
.end method

.method public whitelist setText(Ljava/lang/CharSequence;)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;

    .line 810
    const-wide/32 v0, 0x8cf3b87

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 811
    iget-object v0, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    if-nez v0, :cond_10

    .line 816
    iput-object p1, p0, Landroid/widget/Toast;->mText:Ljava/lang/CharSequence;

    goto :goto_2c

    .line 812
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Text provided for custom toast, remove previous setView() calls if you want a text toast instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 818
    :cond_18
    iget-object v0, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    const-string v1, "This Toast was not created with Toast.makeText()"

    if-eqz v0, :cond_33

    .line 821
    const v2, 0x102000b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 822
    .local v0, "tv":Landroid/widget/TextView;
    if-eqz v0, :cond_2d

    .line 825
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 827
    .end local v0    # "tv":Landroid/widget/TextView;
    :goto_2c
    return-void

    .line 823
    .restart local v0    # "tv":Landroid/widget/TextView;
    :cond_2d
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 819
    .end local v0    # "tv":Landroid/widget/TextView;
    :cond_33
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setView(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 519
    move-object v0, p1

    .line 520
    .local v0, "v":Landroid/view/View;
    iput-object v0, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    .line 521
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/Toast;->mIsCustomToast:Z

    .line 522
    const-string v1, "Toast"

    const-string/jumbo v2, "setView: it\'s a custom toast"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    return-void
.end method

.method public whitelist show()V
    .registers 33

    .line 294
    move-object/from16 v1, p0

    const/4 v0, 0x0

    .line 296
    .local v0, "knoxCustomManager":Lcom/samsung/android/knox/custom/CustomDeviceManagerProxy;
    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManagerProxy;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManagerProxy;

    move-result-object v2

    .line 297
    .end local v0    # "knoxCustomManager":Lcom/samsung/android/knox/custom/CustomDeviceManagerProxy;
    .local v2, "knoxCustomManager":Lcom/samsung/android/knox/custom/CustomDeviceManagerProxy;
    const-string v3, "Toast"

    if-eqz v2, :cond_17

    invoke-virtual {v2}, Lcom/samsung/android/knox/custom/CustomDeviceManagerProxy;->getToastEnabledState()Z

    move-result v0

    if-nez v0, :cond_17

    .line 298
    const-string v0, "Knox Customization: Not showing toast"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    return-void

    .line 304
    :cond_17
    invoke-direct/range {p0 .. p0}, Landroid/widget/Toast;->checkGameHomeAllowList()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 305
    return-void

    .line 310
    :cond_1e
    invoke-direct/range {p0 .. p0}, Landroid/widget/Toast;->isSpeg()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 311
    return-void

    .line 315
    :cond_25
    const-wide/32 v4, 0x8cf3b87

    invoke-static {v4, v5}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v0, :cond_42

    .line 316
    iget-object v0, v1, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    if-nez v0, :cond_3b

    iget-object v0, v1, Landroid/widget/Toast;->mText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_39

    goto :goto_3b

    :cond_39
    move v0, v6

    goto :goto_3c

    :cond_3b
    :goto_3b
    move v0, v7

    :goto_3c
    const-string v8, "You must either set a text or a view"

    invoke-static {v0, v8}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    goto :goto_46

    .line 318
    :cond_42
    iget-object v0, v1, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    if-eqz v0, :cond_1f3

    .line 323
    :goto_46
    iget-object v0, v1, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iget-boolean v8, v1, Landroid/widget/Toast;->mIsCustomToast:Z

    iput-boolean v8, v0, Landroid/widget/Toast$TN;->mIsCustomView:Z

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "show: caller = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v7}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    if-eqz v2, :cond_14b

    invoke-virtual {v2}, Lcom/samsung/android/knox/custom/CustomDeviceManagerProxy;->getToastShowPackageNameState()Z

    move-result v0

    if-eqz v0, :cond_14b

    .line 353
    iget-object v0, v1, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 354
    .local v8, "pm":Landroid/content/pm/PackageManager;
    iget-object v0, v1, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    .line 355
    .local v9, "info":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    .line 356
    .local v10, "appName":Ljava/lang/String;
    iget-object v0, v1, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    const/16 v11, 0x3c

    const/16 v12, 0x3e

    const-string v13, "Exception thrown :"

    const/4 v14, 0x2

    const-string v15, "%1s: %2s"

    if-eqz v0, :cond_f7

    .line 357
    const v4, 0x102000b

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/TextView;

    .line 358
    .local v4, "tv":Landroid/widget/TextView;
    if-eqz v4, :cond_f6

    if-eqz v10, :cond_f6

    .line 359
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f6

    .line 362
    :try_start_ac
    new-instance v0, Landroid/text/SpannableString;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 363
    .local v0, "spannedText":Landroid/text/Spanned;
    invoke-static {v0}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object v5

    .line 365
    .local v5, "oldText":Ljava/lang/String;
    invoke-virtual {v5, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    .line 366
    .local v12, "idx1":I
    invoke-virtual {v5, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v11

    .line 367
    .local v11, "idx2":I
    new-array v7, v14, [Ljava/lang/Object;

    aput-object v10, v7, v6

    add-int/lit8 v6, v12, 0x1

    invoke-virtual {v5, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/16 v16, 0x1

    aput-object v6, v7, v16

    invoke-static {v15, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_da
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_da} :catch_db

    .line 373
    .end local v0    # "spannedText":Landroid/text/Spanned;
    .end local v5    # "oldText":Ljava/lang/String;
    .end local v11    # "idx2":I
    .end local v12    # "idx1":I
    goto :goto_f6

    .line 368
    :catch_db
    move-exception v0

    .line 370
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v3, v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 371
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 372
    .restart local v5    # "oldText":Ljava/lang/String;
    new-array v6, v14, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v10, v6, v7

    const/4 v7, 0x1

    aput-object v5, v6, v7

    invoke-static {v15, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 375
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "tv":Landroid/widget/TextView;
    .end local v5    # "oldText":Ljava/lang/String;
    :cond_f6
    :goto_f6
    goto :goto_14b

    .line 376
    :cond_f7
    if-eqz v10, :cond_14b

    iget-object v0, v1, Landroid/widget/Toast;->mText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_14b

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14b

    .line 378
    :try_start_107
    new-instance v0, Landroid/text/SpannableString;

    iget-object v4, v1, Landroid/widget/Toast;->mText:Ljava/lang/CharSequence;

    invoke-direct {v0, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 379
    .local v0, "spannedText":Landroid/text/Spanned;
    invoke-static {v0}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object v4

    .line 381
    .local v4, "oldText":Ljava/lang/String;
    invoke-virtual {v4, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 382
    .local v5, "idx1":I
    invoke-virtual {v4, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    .line 383
    .local v6, "idx2":I
    new-array v7, v14, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v10, v7, v11

    add-int/lit8 v11, v5, 0x1

    invoke-virtual {v4, v11, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v7, v12

    invoke-static {v15, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    iput-object v7, v1, Landroid/widget/Toast;->mText:Ljava/lang/CharSequence;
    :try_end_132
    .catch Ljava/lang/Exception; {:try_start_107 .. :try_end_132} :catch_133

    .line 388
    .end local v0    # "spannedText":Landroid/text/Spanned;
    .end local v4    # "oldText":Ljava/lang/String;
    .end local v5    # "idx1":I
    .end local v6    # "idx2":I
    goto :goto_14b

    .line 384
    :catch_133
    move-exception v0

    .line 386
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v3, v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 387
    new-array v4, v14, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v10, v4, v5

    iget-object v5, v1, Landroid/widget/Toast;->mText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {v15, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/widget/Toast;->mText:Ljava/lang/CharSequence;

    .line 412
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v8    # "pm":Landroid/content/pm/PackageManager;
    .end local v9    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "appName":Ljava/lang/String;
    :cond_14b
    :goto_14b
    invoke-static {}, Landroid/widget/Toast;->getService()Landroid/app/INotificationManager;

    move-result-object v4

    .line 413
    .local v4, "service":Landroid/app/INotificationManager;
    iget-object v0, v1, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    .line 414
    .local v5, "pkg":Ljava/lang/String;
    iget-object v6, v1, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    .line 419
    .local v6, "tn":Landroid/widget/Toast$TN;
    iget-object v0, v1, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    iput-object v0, v6, Landroid/widget/Toast$TN;->mNextView:Landroid/view/View;

    .line 421
    iget-object v0, v1, Landroid/widget/Toast;->mDisplayContext:Landroid/content/Context;

    if-eqz v0, :cond_160

    goto :goto_162

    :cond_160
    iget-object v0, v1, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    :goto_162
    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    move/from16 v22, v0

    .line 427
    .local v22, "displayId":I
    const/4 v7, -0x1

    .line 429
    .local v7, "uid":I
    :try_start_169
    iget-object v0, v1, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 430
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v8, 0x0

    invoke-virtual {v0, v5, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    .line 431
    .local v8, "ai":Landroid/content/pm/ApplicationInfo;
    iget v3, v8, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_176
    .catch Ljava/lang/Exception; {:try_start_169 .. :try_end_176} :catch_178

    move v7, v3

    .line 434
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    .end local v8    # "ai":Landroid/content/pm/ApplicationInfo;
    goto :goto_17f

    .line 432
    :catch_178
    move-exception v0

    .line 433
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "show: cannot get uid!!!"

    invoke-static {v3, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 437
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_17f
    if-eqz v4, :cond_1f2

    .line 439
    const-wide/32 v8, 0x8cf3b87

    :try_start_184
    invoke-static {v8, v9}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_1d5

    .line 440
    iget-object v0, v1, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    if-eqz v0, :cond_1a6

    .line 442
    iget-object v3, v1, Landroid/widget/Toast;->mToken:Landroid/os/Binder;

    iget v8, v1, Landroid/widget/Toast;->mDuration:I

    .line 443
    invoke-direct {v1, v0}, Landroid/widget/Toast;->semGetMessageFromTv(Landroid/view/View;)Ljava/lang/String;

    move-result-object v23

    .line 442
    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v19, v3

    move-object/from16 v20, v6

    move/from16 v21, v8

    move/from16 v24, v7

    invoke-interface/range {v17 .. v24}, Landroid/app/INotificationManager;->enqueueToastForDex(Ljava/lang/String;Landroid/os/IBinder;Landroid/app/ITransientNotification;IILjava/lang/String;I)V

    goto :goto_1f0

    .line 446
    :cond_1a6
    new-instance v0, Landroid/widget/Toast$CallbackBinder;

    iget-object v3, v1, Landroid/widget/Toast;->mCallbacks:Ljava/util/List;

    iget-object v8, v1, Landroid/widget/Toast;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x0

    invoke-direct {v0, v3, v8, v9}, Landroid/widget/Toast$CallbackBinder;-><init>(Ljava/util/List;Landroid/os/Handler;Landroid/widget/Toast$CallbackBinder-IA;)V

    move-object/from16 v29, v0

    .line 448
    .local v29, "callback":Landroid/app/ITransientNotificationCallback;
    iget-object v0, v1, Landroid/widget/Toast;->mToken:Landroid/os/Binder;

    iget-object v3, v1, Landroid/widget/Toast;->mText:Ljava/lang/CharSequence;

    iget v8, v1, Landroid/widget/Toast;->mDuration:I

    .line 449
    if-eqz v3, :cond_1bf

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_1c1

    :cond_1bf
    const-string v9, ""

    :goto_1c1
    move-object/from16 v30, v9

    .line 448
    move-object/from16 v23, v4

    move-object/from16 v24, v5

    move-object/from16 v25, v0

    move-object/from16 v26, v3

    move/from16 v27, v8

    move/from16 v28, v22

    move/from16 v31, v7

    invoke-interface/range {v23 .. v31}, Landroid/app/INotificationManager;->enqueueTextToastForDex(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/CharSequence;IILandroid/app/ITransientNotificationCallback;Ljava/lang/String;I)V

    .line 450
    .end local v29    # "callback":Landroid/app/ITransientNotificationCallback;
    goto :goto_1f0

    .line 452
    :cond_1d5
    iget-object v0, v1, Landroid/widget/Toast;->mToken:Landroid/os/Binder;

    iget v3, v1, Landroid/widget/Toast;->mDuration:I

    iget-object v8, v1, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    .line 453
    invoke-direct {v1, v8}, Landroid/widget/Toast;->semGetMessageFromTv(Landroid/view/View;)Ljava/lang/String;

    move-result-object v29

    .line 452
    move-object/from16 v23, v4

    move-object/from16 v24, v5

    move-object/from16 v25, v0

    move-object/from16 v26, v6

    move/from16 v27, v3

    move/from16 v28, v22

    move/from16 v30, v7

    invoke-interface/range {v23 .. v30}, Landroid/app/INotificationManager;->enqueueToastForDex(Ljava/lang/String;Landroid/os/IBinder;Landroid/app/ITransientNotification;IILjava/lang/String;I)V
    :try_end_1f0
    .catch Landroid/os/RemoteException; {:try_start_184 .. :try_end_1f0} :catch_1f1

    .line 457
    :goto_1f0
    goto :goto_1f2

    .line 455
    :catch_1f1
    move-exception v0

    .line 482
    :cond_1f2
    :goto_1f2
    return-void

    .line 319
    .end local v4    # "service":Landroid/app/INotificationManager;
    .end local v5    # "pkg":Ljava/lang/String;
    .end local v6    # "tn":Landroid/widget/Toast$TN;
    .end local v7    # "uid":I
    .end local v22    # "displayId":I
    :cond_1f3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "setView must have been called"

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
