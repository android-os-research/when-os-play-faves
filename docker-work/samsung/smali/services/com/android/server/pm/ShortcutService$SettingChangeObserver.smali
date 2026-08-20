.class public Lcom/android/server/pm/ShortcutService$SettingChangeObserver;
.super Landroid/database/ContentObserver;
.source "ShortcutService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ShortcutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SettingChangeObserver"
.end annotation


# instance fields
.field public mContext:Landroid/content/Context;

.field public final synthetic this$0:Lcom/android/server/pm/ShortcutService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/ShortcutService;Landroid/content/Context;)V
    .registers 3

    .line 324
    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$SettingChangeObserver;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 325
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 326
    iput-object p2, p0, Lcom/android/server/pm/ShortcutService$SettingChangeObserver;->mContext:Landroid/content/Context;

    const/4 p1, 0x1

    .line 327
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService$SettingChangeObserver;->onChange(Z)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3

    .line 332
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService$SettingChangeObserver;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "emergency_mode"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_11

    move v0, p1

    .line 334
    :cond_11
    invoke-static {}, Lcom/android/server/pm/ShortcutService;->-$$Nest$sfgetsIsEmergencyMode()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eq p0, v0, :cond_48

    .line 335
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "EmergencyMode changes: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/pm/ShortcutService;->-$$Nest$sfgetsIsEmergencyMode()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " -> "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ShortcutService"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-static {}, Lcom/android/server/pm/ShortcutService;->-$$Nest$sfgetsIsEmergencyMode()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_48
    return-void
.end method
