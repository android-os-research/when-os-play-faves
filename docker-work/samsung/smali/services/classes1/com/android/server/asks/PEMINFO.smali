.class public Lcom/android/server/asks/PEMINFO;
.super Ljava/lang/Object;
.source "UnknownStore.java"


# instance fields
.field public MAX:I

.field public MIN:I

.field public SA:I

.field public policy:I

.field public policyTarget:I

.field public reportedTarget:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/android/server/asks/PEMINFO;
    .registers 1

    return-object p0
.end method

.method public set(IIIIII)V
    .registers 7

    .line 47
    iput p1, p0, Lcom/android/server/asks/PEMINFO;->MIN:I

    .line 48
    iput p2, p0, Lcom/android/server/asks/PEMINFO;->MAX:I

    .line 49
    iput p3, p0, Lcom/android/server/asks/PEMINFO;->SA:I

    .line 50
    iput p4, p0, Lcom/android/server/asks/PEMINFO;->policy:I

    .line 51
    iput p5, p0, Lcom/android/server/asks/PEMINFO;->policyTarget:I

    .line 52
    iput p6, p0, Lcom/android/server/asks/PEMINFO;->reportedTarget:I

    return-void
.end method
