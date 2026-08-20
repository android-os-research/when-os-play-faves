.class final Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;
.super Ljava/lang/Object;
.source "SemTelephonyMainThreadRequest.java"


# instance fields
.field public final blacklist argument:Ljava/lang/Object;

.field public blacklist result:Ljava/lang/Object;

.field public blacklist subId:Ljava/lang/Integer;

.field public blacklist workSource:Landroid/os/WorkSource;


# direct methods
.method constructor blacklist <init>(Ljava/lang/Object;Landroid/os/WorkSource;)V
    .registers 4

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 39
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->subId:Ljava/lang/Integer;

    .line 49
    iput-object p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->argument:Ljava/lang/Object;

    .line 50
    iput-object p2, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->workSource:Landroid/os/WorkSource;

    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/Object;Ljava/lang/Integer;)V
    .registers 4

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 39
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->subId:Ljava/lang/Integer;

    .line 54
    iput-object p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->argument:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 55
    iput-object p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->workSource:Landroid/os/WorkSource;

    if-eqz p2, :cond_13

    .line 57
    iput-object p2, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->subId:Ljava/lang/Integer;

    :cond_13
    return-void
.end method
