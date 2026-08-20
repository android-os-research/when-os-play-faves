.class public final Lcom/android/server/am/CachedAppOptimizer$DefaultProcessDependencies;
.super Ljava/lang/Object;
.source "CachedAppOptimizer.java"

# interfaces
.implements Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/CachedAppOptimizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultProcessDependencies"
.end annotation


# static fields
.field public static volatile mPidCompacting:I = -0x1


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 2000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/CachedAppOptimizer$DefaultProcessDependencies-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer$DefaultProcessDependencies;-><init>()V

    return-void
.end method


# virtual methods
.method public getRss(I)[J
    .registers 2

    .line 2006
    invoke-static {p1}, Landroid/os/Process;->getRss(I)[J

    move-result-object p0

    return-object p0
.end method

.method public performCompaction(Ljava/lang/String;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2012
    sput p2, Lcom/android/server/am/CachedAppOptimizer$DefaultProcessDependencies;->mPidCompacting:I

    .line 2013
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$sfgetCOMPACT_ACTION_STRING()[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x3

    aget-object p0, p0, v0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_13

    .line 2014
    invoke-static {p2, v0}, Lcom/android/server/am/CachedAppOptimizer;->compactProcess(II)V

    goto :goto_34

    .line 2015
    :cond_13
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$sfgetCOMPACT_ACTION_STRING()[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    aget-object p0, p0, v0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_24

    .line 2016
    invoke-static {p2, v0}, Lcom/android/server/am/CachedAppOptimizer;->compactProcess(II)V

    goto :goto_34

    .line 2017
    :cond_24
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$sfgetCOMPACT_ACTION_STRING()[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x2

    aget-object p0, p0, v0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_34

    .line 2018
    invoke-static {p2, v0}, Lcom/android/server/am/CachedAppOptimizer;->compactProcess(II)V

    :cond_34
    :goto_34
    const/4 p0, -0x1

    .line 2020
    sput p0, Lcom/android/server/am/CachedAppOptimizer$DefaultProcessDependencies;->mPidCompacting:I

    return-void
.end method
