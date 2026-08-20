.class public Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;
.super Ljava/lang/Object;
.source "DomainFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/firewall/DomainFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BlockReport"
.end annotation


# instance fields
.field public mTimeStamp:Ljava/lang/String;

.field public mUid:Ljava/lang/String;

.field public mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 2402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2403
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->mTimeStamp:Ljava/lang/String;

    .line 2404
    iput-object p2, p0, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->mUid:Ljava/lang/String;

    .line 2405
    iput-object p3, p0, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->mUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getTimeStamp()Ljava/lang/String;
    .registers 1

    .line 2409
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->mTimeStamp:Ljava/lang/String;

    return-object p0
.end method

.method public getUid()Ljava/lang/String;
    .registers 1

    .line 2413
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->mUid:Ljava/lang/String;

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 1

    .line 2417
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->mUrl:Ljava/lang/String;

    return-object p0
.end method

.method public isEqual(Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 2425
    :cond_4
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->mTimeStamp:Ljava/lang/String;

    if-nez v1, :cond_e

    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->getTimeStamp()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_18

    :cond_e
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->mTimeStamp:Ljava/lang/String;

    if-eqz v1, :cond_19

    .line 2426
    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->getTimeStamp()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_19

    :cond_18
    return v0

    .line 2430
    :cond_19
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->mTimeStamp:Ljava/lang/String;

    if-eqz v1, :cond_28

    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->getTimeStamp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    return v0

    .line 2434
    :cond_28
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->mUid:Ljava/lang/String;

    if-nez v1, :cond_32

    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->getUid()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3c

    :cond_32
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->mUid:Ljava/lang/String;

    if-eqz v1, :cond_3d

    .line 2435
    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->getUid()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3d

    :cond_3c
    return v0

    .line 2439
    :cond_3d
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->mUid:Ljava/lang/String;

    if-eqz v1, :cond_4c

    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4c

    return v0

    .line 2443
    :cond_4c
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->mUrl:Ljava/lang/String;

    if-nez v1, :cond_56

    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_60

    :cond_56
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->mUrl:Ljava/lang/String;

    if-eqz v1, :cond_61

    .line 2444
    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_61

    :cond_60
    return v0

    .line 2448
    :cond_61
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->mUrl:Ljava/lang/String;

    if-eqz p0, :cond_70

    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_70

    return v0

    :cond_70
    const/4 p0, 0x1

    return p0
.end method
