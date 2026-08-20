.class public Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;
.super Landroid/service/contentcapture/IDataShareCallback$Stub;
.source "ContentCaptureManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/contentcapture/ContentCaptureManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataShareCallbackDelegate"
.end annotation


# instance fields
.field public final mClientAdapter:Landroid/view/contentcapture/IDataShareWriteAdapter;

.field public final mDataShareRequest:Landroid/view/contentcapture/DataShareRequest;

.field public final mLoggedWriteFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mParentService:Lcom/android/server/contentcapture/ContentCaptureManagerService;


# direct methods
.method public static synthetic $r8$lambda$72gH0AYesgxs_D3OEK3ELZJ-WGY(Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/service/contentcapture/IDataShareReadAdapter;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->lambda$accept$0(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/service/contentcapture/IDataShareReadAdapter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WaYOVEO0d3LLF5zzWHrRvCpojkQ(Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/service/contentcapture/IDataShareReadAdapter;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->lambda$accept$1(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/service/contentcapture/IDataShareReadAdapter;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/contentcapture/DataShareRequest;Landroid/view/contentcapture/IDataShareWriteAdapter;Lcom/android/server/contentcapture/ContentCaptureManagerService;)V
    .registers 6

    .line 1069
    invoke-direct {p0}, Landroid/service/contentcapture/IDataShareCallback$Stub;-><init>()V

    .line 1065
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mLoggedWriteFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1070
    iput-object p1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mDataShareRequest:Landroid/view/contentcapture/DataShareRequest;

    .line 1071
    iput-object p2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mClientAdapter:Landroid/view/contentcapture/IDataShareWriteAdapter;

    .line 1072
    iput-object p3, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mParentService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    return-void
.end method

.method private synthetic lambda$accept$0(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/service/contentcapture/IDataShareReadAdapter;)V
    .registers 12

    const/4 v0, 0x0

    const/16 v1, 0x9

    const/16 v2, 0xb

    const/4 v3, 0x1

    .line 1129
    :try_start_6
    new-instance v4, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v4, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_8b
    .catchall {:try_start_6 .. :try_end_b} :catchall_89

    .line 1131
    :try_start_b
    new-instance p1, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {p1, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_7f

    const/16 p2, 0x400

    :try_start_12
    new-array p2, p2, [B
    :try_end_14
    .catchall {:try_start_12 .. :try_end_14} :catchall_75

    move v5, v0

    .line 1136
    :goto_15
    :try_start_15
    invoke-virtual {v4, p2}, Ljava/io/InputStream;->read([B)I

    move-result v6
    :try_end_19
    .catchall {:try_start_15 .. :try_end_19} :catchall_72

    const/4 v7, -0x1

    if-ne v6, v7, :cond_6d

    .line 1146
    :try_start_1c
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_6a

    :try_start_1f
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_67
    .catchall {:try_start_1f .. :try_end_22} :catchall_63

    .line 1154
    iget-object p1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mParentService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$2800(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 1155
    :try_start_29
    iget-object p2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mParentService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {p2}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$fgetmPackagesWithShareRequests(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/util/Set;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mDataShareRequest:Landroid/view/contentcapture/DataShareRequest;

    .line 1156
    invoke-virtual {v0}, Landroid/view/contentcapture/DataShareRequest;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1157
    monitor-exit p1
    :try_end_39
    .catchall {:try_start_29 .. :try_end_39} :catchall_60

    if-eqz v5, :cond_e7

    .line 1159
    iget-object p1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mLoggedWriteFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_4b

    .line 1160
    invoke-virtual {p0, v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->logServiceEvent(I)V

    .line 1161
    iget-object p1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mLoggedWriteFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1164
    :cond_4b
    :try_start_4b
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mClientAdapter:Landroid/view/contentcapture/IDataShareWriteAdapter;

    invoke-interface {p0}, Landroid/view/contentcapture/IDataShareWriteAdapter;->finish()V
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_50} :catch_51

    goto :goto_5b

    :catch_51
    move-exception p0

    .line 1166
    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Failed to call finish() the client operation"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1169
    :goto_5b
    :try_start_5b
    invoke-interface {p3}, Landroid/service/contentcapture/IDataShareReadAdapter;->finish()V
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_5b .. :try_end_5e} :catch_dc

    goto/16 :goto_ef

    :catchall_60
    move-exception p0

    .line 1157
    :try_start_61
    monitor-exit p1
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_60

    throw p0

    :catchall_63
    move-exception p1

    move v0, v5

    goto/16 :goto_f3

    :catch_67
    move-exception p1

    move v0, v5

    goto :goto_8c

    :catchall_6a
    move-exception p1

    move v0, v5

    goto :goto_80

    .line 1142
    :cond_6d
    :try_start_6d
    invoke-virtual {p1, p2, v0, v6}, Ljava/io/OutputStream;->write([BII)V
    :try_end_70
    .catchall {:try_start_6d .. :try_end_70} :catchall_72

    move v5, v3

    goto :goto_15

    :catchall_72
    move-exception p2

    move v0, v5

    goto :goto_76

    :catchall_75
    move-exception p2

    .line 1129
    :goto_76
    :try_start_76
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_79
    .catchall {:try_start_76 .. :try_end_79} :catchall_7a

    goto :goto_7e

    :catchall_7a
    move-exception p1

    :try_start_7b
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7e
    throw p2
    :try_end_7f
    .catchall {:try_start_7b .. :try_end_7f} :catchall_7f

    :catchall_7f
    move-exception p1

    :goto_80
    :try_start_80
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_83
    .catchall {:try_start_80 .. :try_end_83} :catchall_84

    goto :goto_88

    :catchall_84
    move-exception p2

    :try_start_85
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_88
    throw p1
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_89} :catch_8b
    .catchall {:try_start_85 .. :try_end_89} :catchall_89

    :catchall_89
    move-exception p1

    goto :goto_f3

    :catch_8b
    move-exception p1

    .line 1147
    :goto_8c
    :try_start_8c
    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    const-string v4, "Failed to pipe client and service streams"

    invoke-static {p2, v4, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 p1, 0xa

    .line 1148
    invoke-virtual {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->logServiceEvent(I)V

    .line 1151
    iget-object p1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mClientAdapter:Landroid/view/contentcapture/IDataShareWriteAdapter;

    invoke-static {p1, p3, v3}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->sendErrorSignal(Landroid/view/contentcapture/IDataShareWriteAdapter;Landroid/service/contentcapture/IDataShareReadAdapter;I)V
    :try_end_9f
    .catchall {:try_start_8c .. :try_end_9f} :catchall_89

    .line 1154
    iget-object p1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mParentService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$2800(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 1155
    :try_start_a6
    iget-object p2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mParentService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {p2}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$fgetmPackagesWithShareRequests(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/util/Set;

    move-result-object p2

    iget-object v4, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mDataShareRequest:Landroid/view/contentcapture/DataShareRequest;

    .line 1156
    invoke-virtual {v4}, Landroid/view/contentcapture/DataShareRequest;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1157
    monitor-exit p1
    :try_end_b6
    .catchall {:try_start_a6 .. :try_end_b6} :catchall_f0

    if-eqz v0, :cond_e7

    .line 1159
    iget-object p1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mLoggedWriteFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_c8

    .line 1160
    invoke-virtual {p0, v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->logServiceEvent(I)V

    .line 1161
    iget-object p1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mLoggedWriteFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1164
    :cond_c8
    :try_start_c8
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mClientAdapter:Landroid/view/contentcapture/IDataShareWriteAdapter;

    invoke-interface {p0}, Landroid/view/contentcapture/IDataShareWriteAdapter;->finish()V
    :try_end_cd
    .catch Landroid/os/RemoteException; {:try_start_c8 .. :try_end_cd} :catch_ce

    goto :goto_d8

    :catch_ce
    move-exception p0

    .line 1166
    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Failed to call finish() the client operation"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1169
    :goto_d8
    :try_start_d8
    invoke-interface {p3}, Landroid/service/contentcapture/IDataShareReadAdapter;->finish()V
    :try_end_db
    .catch Landroid/os/RemoteException; {:try_start_d8 .. :try_end_db} :catch_dc

    goto :goto_ef

    :catch_dc
    move-exception p0

    .line 1171
    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Failed to call finish() the service operation"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_ef

    .line 1175
    :cond_e7
    invoke-virtual {p0, v2}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->logServiceEvent(I)V

    .line 1177
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mClientAdapter:Landroid/view/contentcapture/IDataShareWriteAdapter;

    invoke-static {p0, p3, v3}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->sendErrorSignal(Landroid/view/contentcapture/IDataShareWriteAdapter;Landroid/service/contentcapture/IDataShareReadAdapter;I)V

    :goto_ef
    return-void

    :catchall_f0
    move-exception p0

    .line 1157
    :try_start_f1
    monitor-exit p1
    :try_end_f2
    .catchall {:try_start_f1 .. :try_end_f2} :catchall_f0

    throw p0

    .line 1154
    :goto_f3
    iget-object p2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mParentService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {p2}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$2800(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 1155
    :try_start_fa
    iget-object v4, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mParentService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v4}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$fgetmPackagesWithShareRequests(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/util/Set;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mDataShareRequest:Landroid/view/contentcapture/DataShareRequest;

    .line 1156
    invoke-virtual {v5}, Landroid/view/contentcapture/DataShareRequest;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1157
    monitor-exit p2
    :try_end_10a
    .catchall {:try_start_fa .. :try_end_10a} :catchall_144

    if-eqz v0, :cond_13b

    .line 1159
    iget-object p2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mLoggedWriteFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-nez p2, :cond_11c

    .line 1160
    invoke-virtual {p0, v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->logServiceEvent(I)V

    .line 1161
    iget-object p2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mLoggedWriteFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1164
    :cond_11c
    :try_start_11c
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mClientAdapter:Landroid/view/contentcapture/IDataShareWriteAdapter;

    invoke-interface {p0}, Landroid/view/contentcapture/IDataShareWriteAdapter;->finish()V
    :try_end_121
    .catch Landroid/os/RemoteException; {:try_start_11c .. :try_end_121} :catch_122

    goto :goto_12c

    :catch_122
    move-exception p0

    .line 1166
    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Failed to call finish() the client operation"

    invoke-static {p2, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1169
    :goto_12c
    :try_start_12c
    invoke-interface {p3}, Landroid/service/contentcapture/IDataShareReadAdapter;->finish()V
    :try_end_12f
    .catch Landroid/os/RemoteException; {:try_start_12c .. :try_end_12f} :catch_130

    goto :goto_143

    :catch_130
    move-exception p0

    .line 1171
    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Failed to call finish() the service operation"

    invoke-static {p2, p3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_143

    .line 1175
    :cond_13b
    invoke-virtual {p0, v2}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->logServiceEvent(I)V

    .line 1177
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mClientAdapter:Landroid/view/contentcapture/IDataShareWriteAdapter;

    invoke-static {p0, p3, v3}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->sendErrorSignal(Landroid/view/contentcapture/IDataShareWriteAdapter;Landroid/service/contentcapture/IDataShareReadAdapter;I)V

    .line 1180
    :goto_143
    throw p1

    :catchall_144
    move-exception p0

    .line 1157
    :try_start_145
    monitor-exit p2
    :try_end_146
    .catchall {:try_start_145 .. :try_end_146} :catchall_144

    throw p0
.end method

.method private synthetic lambda$accept$1(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/service/contentcapture/IDataShareReadAdapter;)V
    .registers 6

    .line 1184
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->enforceDataSharingTtl(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/service/contentcapture/IDataShareReadAdapter;)V

    return-void
.end method

.method public static sendErrorSignal(Landroid/view/contentcapture/IDataShareWriteAdapter;Landroid/service/contentcapture/IDataShareReadAdapter;I)V
    .registers 5

    .line 1323
    :try_start_0
    invoke-interface {p0, p2}, Landroid/view/contentcapture/IDataShareWriteAdapter;->error(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_e

    :catch_4
    move-exception p0

    .line 1325
    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to call error() the client operation"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1328
    :goto_e
    :try_start_e
    invoke-interface {p1, p2}, Landroid/service/contentcapture/IDataShareReadAdapter;->error(I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_11} :catch_12

    goto :goto_1c

    :catch_12
    move-exception p0

    .line 1330
    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Failed to call error() the service operation"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1c
    return-void
.end method


# virtual methods
.method public accept(Landroid/service/contentcapture/IDataShareReadAdapter;)V
    .registers 12

    .line 1077
    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Data share request accepted by Content Capture service"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x7

    .line 1078
    invoke-virtual {p0, v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->logServiceEvent(I)V

    .line 1080
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->createPipe()Landroid/util/Pair;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_1f

    const/16 v0, 0xc

    .line 1082
    invoke-virtual {p0, v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->logServiceEvent(I)V

    .line 1084
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mClientAdapter:Landroid/view/contentcapture/IDataShareWriteAdapter;

    invoke-static {p0, p1, v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->sendErrorSignal(Landroid/view/contentcapture/IDataShareWriteAdapter;Landroid/service/contentcapture/IDataShareReadAdapter;I)V

    return-void

    .line 1089
    :cond_1f
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v5, v2

    check-cast v5, Landroid/os/ParcelFileDescriptor;

    .line 1090
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Landroid/os/ParcelFileDescriptor;

    .line 1092
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->createPipe()Landroid/util/Pair;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez v0, :cond_45

    const/16 v0, 0xd

    .line 1094
    invoke-virtual {p0, v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->logServiceEvent(I)V

    new-array v0, v3, [Landroid/os/ParcelFileDescriptor;

    aput-object v5, v0, v2

    aput-object v6, v0, v1

    .line 1096
    invoke-virtual {p0, v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->bestEffortCloseFileDescriptors([Landroid/os/ParcelFileDescriptor;)V

    .line 1098
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mClientAdapter:Landroid/view/contentcapture/IDataShareWriteAdapter;

    invoke-static {p0, p1, v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->sendErrorSignal(Landroid/view/contentcapture/IDataShareWriteAdapter;Landroid/service/contentcapture/IDataShareReadAdapter;I)V

    return-void

    .line 1103
    :cond_45
    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v7, v4

    check-cast v7, Landroid/os/ParcelFileDescriptor;

    .line 1104
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Landroid/os/ParcelFileDescriptor;

    .line 1106
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mParentService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$2400(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1107
    :try_start_56
    iget-object v4, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mParentService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v4}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$fgetmPackagesWithShareRequests(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/util/Set;

    move-result-object v4

    iget-object v9, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mDataShareRequest:Landroid/view/contentcapture/DataShareRequest;

    invoke-virtual {v9}, Landroid/view/contentcapture/DataShareRequest;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1108
    monitor-exit v0
    :try_end_66
    .catchall {:try_start_56 .. :try_end_66} :catchall_c9

    .line 1110
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mClientAdapter:Landroid/view/contentcapture/IDataShareWriteAdapter;

    invoke-virtual {p0, v0, p1, v5, v8}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->setUpSharingPipeline(Landroid/view/contentcapture/IDataShareWriteAdapter;Landroid/service/contentcapture/IDataShareReadAdapter;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)Z

    move-result v0

    if-nez v0, :cond_9d

    .line 1111
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mClientAdapter:Landroid/view/contentcapture/IDataShareWriteAdapter;

    invoke-static {v0, p1, v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->sendErrorSignal(Landroid/view/contentcapture/IDataShareWriteAdapter;Landroid/service/contentcapture/IDataShareReadAdapter;I)V

    const/4 p1, 0x4

    new-array p1, p1, [Landroid/os/ParcelFileDescriptor;

    aput-object v5, p1, v2

    aput-object v6, p1, v1

    aput-object v7, p1, v3

    const/4 v0, 0x3

    aput-object v8, p1, v0

    .line 1113
    invoke-virtual {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->bestEffortCloseFileDescriptors([Landroid/os/ParcelFileDescriptor;)V

    .line 1114
    iget-object p1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mParentService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$2500(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1115
    :try_start_89
    iget-object p1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mParentService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$fgetmPackagesWithShareRequests(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/util/Set;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mDataShareRequest:Landroid/view/contentcapture/DataShareRequest;

    .line 1116
    invoke-virtual {p0}, Landroid/view/contentcapture/DataShareRequest;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1117
    monitor-exit v0

    return-void

    :catchall_9a
    move-exception p0

    monitor-exit v0
    :try_end_9c
    .catchall {:try_start_89 .. :try_end_9c} :catchall_9a

    throw p0

    :cond_9d
    new-array v0, v3, [Landroid/os/ParcelFileDescriptor;

    aput-object v5, v0, v2

    aput-object v8, v0, v1

    .line 1125
    invoke-virtual {p0, v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->bestEffortCloseFileDescriptors([Landroid/os/ParcelFileDescriptor;)V

    .line 1127
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mParentService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$fgetmDataShareExecutor(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v6, v7, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/service/contentcapture/IDataShareReadAdapter;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1183
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mParentService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate$$ExternalSyntheticLambda1;

    move-object v3, v1

    move-object v4, p0

    move-object v9, p1

    invoke-direct/range {v3 .. v9}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/service/contentcapture/IDataShareReadAdapter;)V

    const-wide/32 p0, 0x493e0

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catchall_c9
    move-exception p0

    .line 1108
    :try_start_ca
    monitor-exit v0
    :try_end_cb
    .catchall {:try_start_ca .. :try_end_cb} :catchall_c9

    throw p0
.end method

.method public final bestEffortCloseFileDescriptor(Landroid/os/ParcelFileDescriptor;)V
    .registers 3

    .line 1306
    :try_start_0
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_e

    :catch_4
    move-exception p0

    .line 1308
    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Failed to close a file descriptor"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method

.method public final varargs bestEffortCloseFileDescriptors([Landroid/os/ParcelFileDescriptor;)V
    .registers 5

    .line 1313
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_c

    aget-object v2, p1, v1

    .line 1314
    invoke-virtual {p0, v2}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->bestEffortCloseFileDescriptor(Landroid/os/ParcelFileDescriptor;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_c
    return-void
.end method

.method public final createPipe()Landroid/util/Pair;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Landroid/os/ParcelFileDescriptor;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    .line 1282
    :try_start_1
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_5} :catch_41

    .line 1288
    array-length v1, v0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_13

    .line 1289
    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to create a content capture data-sharing pipe, unexpected number of file descriptors"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_13
    const/4 v1, 0x0

    .line 1294
    aget-object v2, v0, v1

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->valid()Z

    move-result v2

    if-eqz v2, :cond_37

    const/4 v2, 0x1

    aget-object v3, v0, v2

    .line 1295
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->valid()Z

    move-result v3

    if-nez v3, :cond_2e

    goto :goto_37

    .line 1301
    :cond_2e
    aget-object p0, v0, v1

    aget-object v0, v0, v2

    invoke-static {p0, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 1296
    :cond_37
    :goto_37
    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to create a content capture data-sharing pipe, didn\'t receive a pair of valid file descriptors."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :catch_41
    move-exception v0

    .line 1284
    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to create a content capture data-sharing pipe"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p0
.end method

.method public final enforceDataSharingTtl(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/service/contentcapture/IDataShareReadAdapter;)V
    .registers 13

    .line 1242
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mParentService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$2600(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1243
    :try_start_7
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mParentService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$fgetmPackagesWithShareRequests(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mDataShareRequest:Landroid/view/contentcapture/DataShareRequest;

    .line 1244
    invoke-virtual {v2}, Landroid/view/contentcapture/DataShareRequest;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1249
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->valid()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2e

    .line 1250
    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->valid()Z

    move-result v1

    if-nez v1, :cond_2e

    move v1, v3

    goto :goto_2f

    :cond_2e
    move v1, v2

    :goto_2f
    if-eqz v1, :cond_67

    .line 1253
    iget-object v4, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mLoggedWriteFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-nez v4, :cond_43

    const/16 v4, 0x9

    .line 1254
    invoke-virtual {p0, v4}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->logServiceEvent(I)V

    .line 1255
    iget-object v4, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mLoggedWriteFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1257
    :cond_43
    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Content capture data sharing session terminated successfully for package \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mDataShareRequest:Landroid/view/contentcapture/DataShareRequest;

    .line 1259
    invoke-virtual {v6}, Landroid/view/contentcapture/DataShareRequest;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1257
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8f

    :cond_67
    const/16 v4, 0xf

    .line 1262
    invoke-virtual {p0, v4}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->logServiceEvent(I)V

    .line 1263
    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Reached the timeout of Content Capture data sharing session for package \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mDataShareRequest:Landroid/view/contentcapture/DataShareRequest;

    .line 1265
    invoke-virtual {v6}, Landroid/view/contentcapture/DataShareRequest;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\', terminating the pipe."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1263
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8f
    const/4 v4, 0x4

    new-array v4, v4, [Landroid/os/ParcelFileDescriptor;

    aput-object p1, v4, v2

    aput-object p2, v4, v3

    const/4 p1, 0x2

    aput-object p3, v4, p1

    const/4 p1, 0x3

    aput-object p4, v4, p1

    .line 1270
    invoke-virtual {p0, v4}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->bestEffortCloseFileDescriptors([Landroid/os/ParcelFileDescriptor;)V

    if-nez v1, :cond_a6

    .line 1273
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mClientAdapter:Landroid/view/contentcapture/IDataShareWriteAdapter;

    invoke-static {p0, p5, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->sendErrorSignal(Landroid/view/contentcapture/IDataShareWriteAdapter;Landroid/service/contentcapture/IDataShareReadAdapter;I)V

    .line 1276
    :cond_a6
    monitor-exit v0

    return-void

    :catchall_a8
    move-exception p0

    monitor-exit v0
    :try_end_aa
    .catchall {:try_start_7 .. :try_end_aa} :catchall_a8

    throw p0
.end method

.method public final logServiceEvent(I)V
    .registers 3

    .line 1335
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1336
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mParentService:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;
    invoke-static {p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$2700(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Lcom/android/server/infra/ServiceNameResolver;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/android/server/infra/ServiceNameResolver;->getServiceName(I)Ljava/lang/String;

    move-result-object p0

    .line 1337
    invoke-static {p1, p0}, Lcom/android/server/contentcapture/ContentCaptureMetricsLogger;->writeServiceEvent(ILjava/lang/String;)V

    return-void
.end method

.method public reject()V
    .registers 4

    .line 1195
    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Data share request rejected by Content Capture service"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x8

    .line 1196
    invoke-virtual {p0, v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->logServiceEvent(I)V

    .line 1199
    :try_start_e
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mClientAdapter:Landroid/view/contentcapture/IDataShareWriteAdapter;

    invoke-interface {v0}, Landroid/view/contentcapture/IDataShareWriteAdapter;->rejected()V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_13} :catch_14

    goto :goto_2f

    :catch_14
    move-exception v0

    .line 1201
    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to call rejected() the client operation"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1203
    :try_start_1e
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->mClientAdapter:Landroid/view/contentcapture/IDataShareWriteAdapter;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroid/view/contentcapture/IDataShareWriteAdapter;->error(I)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_24} :catch_25

    goto :goto_2f

    :catch_25
    move-exception p0

    .line 1205
    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to call error() the client operation"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2f
    return-void
.end method

.method public final setUpSharingPipeline(Landroid/view/contentcapture/IDataShareWriteAdapter;Landroid/service/contentcapture/IDataShareReadAdapter;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)Z
    .registers 6

    const/4 v0, 0x0

    .line 1216
    :try_start_1
    invoke-interface {p1, p3}, Landroid/view/contentcapture/IDataShareWriteAdapter;->write(Landroid/os/ParcelFileDescriptor;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_4} :catch_19

    .line 1225
    :try_start_4
    invoke-interface {p2, p4}, Landroid/service/contentcapture/IDataShareReadAdapter;->start(Landroid/os/ParcelFileDescriptor;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    const/4 p0, 0x1

    return p0

    :catch_9
    move-exception p1

    .line 1227
    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Failed to call start() the service operation"

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 p1, 0xd

    .line 1228
    invoke-virtual {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->logServiceEvent(I)V

    return v0

    :catch_19
    move-exception p1

    .line 1218
    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Failed to call write() the client operation"

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 p1, 0xc

    .line 1219
    invoke-virtual {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->logServiceEvent(I)V

    return v0
.end method
