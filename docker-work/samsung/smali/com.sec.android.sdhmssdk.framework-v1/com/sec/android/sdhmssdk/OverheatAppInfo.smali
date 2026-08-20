.class public abstract Lcom/sec/android/sdhmssdk/OverheatAppInfo;
.super Ljava/lang/Object;
.source "OverheatAppInfo.java"

# interfaces
.implements Lcom/sec/android/sdhmssdk/IOverheatAppInfoInterfaceInternal;


# instance fields
.field private uid:I


# direct methods
.method protected constructor <init>(I)V
    .registers 2
    .param p1, "value"    # I

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcom/sec/android/sdhmssdk/OverheatAppInfo;->uid:I

    .line 10
    return-void
.end method


# virtual methods
.method public getUid()I
    .registers 2

    .line 14
    iget v0, p0, Lcom/sec/android/sdhmssdk/OverheatAppInfo;->uid:I

    return v0
.end method
