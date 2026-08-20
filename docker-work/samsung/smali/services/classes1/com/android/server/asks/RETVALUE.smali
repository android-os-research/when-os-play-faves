.class public Lcom/android/server/asks/RETVALUE;
.super Ljava/lang/Object;
.source "UnknownStore.java"


# instance fields
.field public SA:I

.field public isExecute:I

.field public policy:I

.field public policyTarget:I

.field public reportedTarget:I

.field public status:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPolicy()I
    .registers 1

    .line 31
    iget p0, p0, Lcom/android/server/asks/RETVALUE;->policy:I

    return p0
.end method

.method public getSA()I
    .registers 1

    .line 34
    iget p0, p0, Lcom/android/server/asks/RETVALUE;->SA:I

    return p0
.end method

.method public getStatus()I
    .registers 1

    .line 28
    iget p0, p0, Lcom/android/server/asks/RETVALUE;->status:I

    return p0
.end method

.method public set(IIIIII)V
    .registers 7

    .line 19
    iput p1, p0, Lcom/android/server/asks/RETVALUE;->status:I

    .line 20
    iput p2, p0, Lcom/android/server/asks/RETVALUE;->policy:I

    .line 21
    iput p3, p0, Lcom/android/server/asks/RETVALUE;->SA:I

    .line 22
    iput p4, p0, Lcom/android/server/asks/RETVALUE;->isExecute:I

    .line 23
    iput p5, p0, Lcom/android/server/asks/RETVALUE;->policyTarget:I

    .line 24
    iput p6, p0, Lcom/android/server/asks/RETVALUE;->reportedTarget:I

    return-void
.end method
