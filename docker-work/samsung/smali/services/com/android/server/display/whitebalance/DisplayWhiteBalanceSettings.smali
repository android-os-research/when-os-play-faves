.class public Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;
.super Ljava/lang/Object;
.source "DisplayWhiteBalanceSettings.java"

# interfaces
.implements Lcom/android/server/display/color/ColorDisplayService$DisplayWhiteBalanceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings$DisplayWhiteBalanceSettingsHandler;
    }
.end annotation


# static fields
.field public static final MSG_SET_ACTIVE:I = 0x1

.field public static final TAG:Ljava/lang/String; = "DisplayWhiteBalanceSettings"


# instance fields
.field public mActive:Z

.field public mCallbacks:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;

.field public final mCdsi:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

.field public final mContext:Landroid/content/Context;

.field public mEnabled:Z

.field public final mHandler:Landroid/os/Handler;

.field public mLoggingEnabled:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCdsi(Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;)Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->mCdsi:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msetActive(Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->setActive(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetEnabled(Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->setEnabled(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->validateArguments(Landroid/content/Context;Landroid/os/Handler;)V

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->mLoggingEnabled:Z

    .line 74
    iput-object p1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->mContext:Landroid/content/Context;

    .line 75
    new-instance p1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings$DisplayWhiteBalanceSettingsHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings$DisplayWhiteBalanceSettingsHandler;-><init>(Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 76
    iput-object p1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->mCallbacks:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;

    .line 78
    const-class p1, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    iput-object p1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->mCdsi:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    .line 79
    invoke-virtual {p1}, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->isDisplayWhiteBalanceEnabled()Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->setEnabled(Z)V

    .line 80
    invoke-virtual {p1, p0}, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->setDisplayWhiteBalanceListener(Lcom/android/server/display/color/ColorDisplayService$DisplayWhiteBalanceListener;)Z

    move-result p1

    .line 81
    invoke-virtual {p0, p1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->setActive(Z)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    const-string v0, "DisplayWhiteBalanceSettings"

    .line 132
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLoggingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->mLoggingEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mHandler="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->mEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->mActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCallbacks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->mCallbacks:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public isEnabled()Z
    .registers 2

    .line 122
    iget-boolean v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->mEnabled:Z

    if-eqz v0, :cond_a

    iget-boolean p0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->mActive:Z

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public onDisplayWhiteBalanceStatusChanged(Z)V
    .registers 4

    .line 143
    iget-object p0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 144
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final setActive(Z)V
    .registers 4

    .line 166
    iget-boolean v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->mActive:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 169
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->mLoggingEnabled:Z

    if-eqz v0, :cond_1f

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Active: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayWhiteBalanceSettings"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_1f
    iput-boolean p1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->mActive:Z

    .line 173
    iget-object p0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->mCallbacks:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;

    if-eqz p0, :cond_28

    .line 174
    invoke-interface {p0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;->updateWhiteBalance()V

    :cond_28
    return-void
.end method

.method public setCallbacks(Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;)Z
    .registers 3

    .line 93
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->mCallbacks:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;

    if-ne v0, p1, :cond_6

    const/4 p0, 0x0

    return p0

    .line 96
    :cond_6
    iput-object p1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->mCallbacks:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;

    const/4 p0, 0x1

    return p0
.end method

.method public final setEnabled(Z)V
    .registers 4

    .line 153
    iget-boolean v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->mEnabled:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 156
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->mLoggingEnabled:Z

    if-eqz v0, :cond_1f

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayWhiteBalanceSettings"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_1f
    iput-boolean p1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->mEnabled:Z

    .line 160
    iget-object p0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->mCallbacks:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;

    if-eqz p0, :cond_28

    .line 161
    invoke-interface {p0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;->updateWhiteBalance()V

    :cond_28
    return-void
.end method

.method public setLoggingEnabled(Z)Z
    .registers 3

    .line 109
    iget-boolean v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->mLoggingEnabled:Z

    if-ne v0, p1, :cond_6

    const/4 p0, 0x0

    return p0

    .line 112
    :cond_6
    iput-boolean p1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->mLoggingEnabled:Z

    const/4 p0, 0x1

    return p0
.end method

.method public final validateArguments(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 3

    const-string p0, "context must not be null"

    .line 148
    invoke-static {p1, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo p0, "handler must not be null"

    .line 149
    invoke-static {p2, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method
