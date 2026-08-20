.class public final Lcom/android/server/am/Heimdall$HeimdalldManager;
.super Ljava/lang/Object;
.source "Heimdall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Heimdall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HeimdalldManager"
.end annotation


# direct methods
.method public static bridge synthetic -$$Nest$sminit()V
    .registers 0

    invoke-static {}, Lcom/android/server/am/Heimdall$HeimdalldManager;->init()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init()V
    .registers 0

    .line 81
    invoke-static {}, Lcom/android/server/am/Heimdall$HeimdalldBroadcastManager;->-$$Nest$sminit()V

    .line 82
    invoke-static {}, Lcom/android/server/am/Heimdall$HeimdalldBigdataManager;->-$$Nest$sminit()V

    .line 83
    invoke-static {}, Lcom/android/server/am/Heimdall$HeimdalldPkgManager;->-$$Nest$sminit()V

    .line 84
    invoke-static {}, Lcom/android/server/am/Heimdall$HeimdalldProxy;->-$$Nest$sminit()V

    return-void
.end method

.method public static onReceiveData(Ljava/lang/String;)V
    .registers 6

    const-string v0, ","

    .line 87
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 88
    aget-object v0, p0, v0

    const/4 v1, 0x1

    .line 89
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    .line 90
    aget-object v2, p0, v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x3

    .line 91
    aget-object p0, p0, v4

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    .line 92
    invoke-static {v0, v1, v2, p0}, Lcom/android/server/am/Heimdall$HeimdalldPkgManager;->-$$Nest$smupdatePkgInfoList(Ljava/lang/String;IZZ)V

    return-void
.end method
