.class public Lcom/android/server/notification/toast/TextToastRecord;
.super Lcom/android/server/notification/toast/ToastRecord;
.source "TextToastRecord.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "NotificationService"

.field public static sCheckDex:Z = false


# instance fields
.field public final mCallback:Landroid/app/ITransientNotificationCallback;

.field public final mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field public final text:Ljava/lang/CharSequence;


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/statusbar/StatusBarManagerInternal;IILjava/lang/String;ZLandroid/os/IBinder;Ljava/lang/CharSequence;ILandroid/os/Binder;ILandroid/app/ITransientNotificationCallback;Ljava/lang/String;)V
    .registers 26

    move-object v11, p0

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p9

    move-object/from16 v8, p10

    move/from16 v9, p11

    move-object/from16 v10, p13

    .line 53
    invoke-direct/range {v0 .. v10}, Lcom/android/server/notification/toast/ToastRecord;-><init>(Lcom/android/server/notification/NotificationManagerService;IILjava/lang/String;ZLandroid/os/IBinder;ILandroid/os/Binder;ILjava/lang/String;)V

    move-object v0, p2

    .line 55
    iput-object v0, v11, Lcom/android/server/notification/toast/TextToastRecord;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-object/from16 v0, p12

    .line 56
    iput-object v0, v11, Lcom/android/server/notification/toast/TextToastRecord;->mCallback:Landroid/app/ITransientNotificationCallback;

    .line 57
    invoke-static/range {p8 .. p8}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, v11, Lcom/android/server/notification/toast/TextToastRecord;->text:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public hide()V
    .registers 3

    .line 76
    iget-object v0, p0, Lcom/android/server/notification/toast/TextToastRecord;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    const-string v1, "Cannot hide toast that wasn\'t shown"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lcom/android/server/notification/toast/TextToastRecord;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    iget-object v1, p0, Lcom/android/server/notification/toast/ToastRecord;->pkg:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/notification/toast/ToastRecord;->token:Landroid/os/IBinder;

    invoke-interface {v0, v1, p0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->hideToast(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public isAppRendered()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public show()Z
    .registers 12

    .line 62
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    const-string v1, "NotificationService"

    if-eqz v0, :cond_26

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Show pkg="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/notification/toast/ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " text="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/notification/toast/TextToastRecord;->text:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_26
    iget-object v2, p0, Lcom/android/server/notification/toast/TextToastRecord;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-nez v2, :cond_42

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StatusBar not available to show text toast for package "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/notification/toast/ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 69
    :cond_42
    iget v3, p0, Lcom/android/server/notification/toast/ToastRecord;->uid:I

    iget-object v4, p0, Lcom/android/server/notification/toast/ToastRecord;->pkg:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/notification/toast/ToastRecord;->token:Landroid/os/IBinder;

    iget-object v6, p0, Lcom/android/server/notification/toast/TextToastRecord;->text:Ljava/lang/CharSequence;

    iget-object v7, p0, Lcom/android/server/notification/toast/ToastRecord;->windowToken:Landroid/os/Binder;

    invoke-virtual {p0}, Lcom/android/server/notification/toast/ToastRecord;->getDuration()I

    move-result v8

    iget-object v9, p0, Lcom/android/server/notification/toast/TextToastRecord;->mCallback:Landroid/app/ITransientNotificationCallback;

    iget v10, p0, Lcom/android/server/notification/toast/ToastRecord;->displayId:I

    invoke-interface/range {v2 .. v10}, Lcom/android/server/statusbar/StatusBarManagerInternal;->showToast(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/CharSequence;Landroid/os/IBinder;ILandroid/app/ITransientNotificationCallback;I)V

    const/4 p0, 0x1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TextToastRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/notification/toast/ToastRecord;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/notification/toast/ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/notification/toast/ToastRecord;->uid:I

    .line 90
    invoke-static {v1}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " isSystemToast="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/notification/toast/ToastRecord;->isSystemToast:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/notification/toast/ToastRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/notification/toast/TextToastRecord;->text:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {p0}, Lcom/android/server/notification/toast/ToastRecord;->getDuration()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
