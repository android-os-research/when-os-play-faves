.class public final Lcom/android/server/am/Heimdall$HeimdalldBigdataManager;
.super Ljava/lang/Object;
.source "Heimdall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Heimdall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HeimdalldBigdataManager"
.end annotation


# static fields
.field public static semHqmManager:Landroid/os/SemHqmManager;


# direct methods
.method public static bridge synthetic -$$Nest$sminit()V
    .registers 0

    invoke-static {}, Lcom/android/server/am/Heimdall$HeimdalldBigdataManager;->init()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smonHqmUpdateRequest()V
    .registers 0

    invoke-static {}, Lcom/android/server/am/Heimdall$HeimdalldBigdataManager;->onHqmUpdateRequest()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smsendData(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/am/Heimdall$HeimdalldBigdataManager;->sendData(Ljava/lang/String;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init()V
    .registers 2

    .line 134
    invoke-static {}, Lcom/android/server/am/Heimdall;->-$$Nest$sfgetmContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "HqmManagerService"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SemHqmManager;

    sput-object v0, Lcom/android/server/am/Heimdall$HeimdalldBigdataManager;->semHqmManager:Landroid/os/SemHqmManager;

    return-void
.end method

.method public static onHqmUpdateRequest()V
    .registers 2

    .line 151
    invoke-static {}, Lcom/android/server/am/Heimdall;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onHqmUpdateRequest"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-static {}, Lcom/android/server/am/Heimdall$HeimdalldPkgManager;->-$$Nest$smdumpPkgInfoListToBigdata()V

    return-void
.end method

.method public static sendData(Ljava/lang/String;)V
    .registers 12

    .line 139
    sget-object v0, Lcom/android/server/am/Heimdall$HeimdalldBigdataManager;->semHqmManager:Landroid/os/SemHqmManager;

    if-nez v0, :cond_5

    return-void

    .line 142
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x400

    if-lt v0, v1, :cond_27

    .line 143
    invoke-static {}, Lcom/android/server/am/Heimdall;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendData: can not send large data "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 147
    :cond_27
    sget-object v1, Lcom/android/server/am/Heimdall$HeimdalldBigdataManager;->semHqmManager:Landroid/os/SemHqmManager;

    const/4 v2, 0x0

    const-string v3, "AP"

    const-string v4, "HDMM"

    const-string/jumbo v5, "sm"

    const-string v6, "0.0"

    const-string/jumbo v7, "sec"

    const-string v8, ""

    const-string v10, ""

    move-object v9, p0

    invoke-virtual/range {v1 .. v10}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
