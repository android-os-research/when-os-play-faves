.class public interface abstract Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$pollTspIrqCallback;
.super Ljava/lang/Object;
.source "ISehSysInputDev.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "pollTspIrqCallback"
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public abstract onValues(ILjava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Short;",
            ">;)V"
        }
    .end annotation
.end method
