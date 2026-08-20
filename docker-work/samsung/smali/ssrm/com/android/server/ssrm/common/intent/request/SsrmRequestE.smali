.class public Lcom/android/server/ssrm/common/intent/request/SsrmRequestE;
.super Ljava/lang/Object;
.source "SsrmRequestE.java"

# interfaces
.implements Lcom/android/server/ssrm/common/IEvent;


# instance fields
.field private mStatusName:Ljava/lang/String;

.field private mStatusValue:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 3
    .param p1, "statusName"    # Ljava/lang/String;
    .param p2, "statusValue"    # Z

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/android/server/ssrm/common/intent/request/SsrmRequestE;->mStatusName:Ljava/lang/String;

    .line 16
    iput-boolean p2, p0, Lcom/android/server/ssrm/common/intent/request/SsrmRequestE;->mStatusValue:Z

    .line 17
    return-void
.end method


# virtual methods
.method public getStatusName()Ljava/lang/String;
    .registers 2

    .line 21
    iget-object v0, p0, Lcom/android/server/ssrm/common/intent/request/SsrmRequestE;->mStatusName:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusValue()Z
    .registers 2

    .line 25
    iget-boolean v0, p0, Lcom/android/server/ssrm/common/intent/request/SsrmRequestE;->mStatusValue:Z

    return v0
.end method
