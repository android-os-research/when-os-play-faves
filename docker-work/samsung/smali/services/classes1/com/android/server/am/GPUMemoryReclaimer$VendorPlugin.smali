.class public abstract Lcom/android/server/am/GPUMemoryReclaimer$VendorPlugin;
.super Ljava/lang/Object;
.source "PerProcessNandswap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/GPUMemoryReclaimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "VendorPlugin"
.end annotation


# instance fields
.field public mIsInitialized:Z

.field public mPluginName:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/am/GPUMemoryReclaimer;


# direct methods
.method public constructor <init>(Lcom/android/server/am/GPUMemoryReclaimer;Ljava/lang/String;)V
    .registers 3

    .line 2840
    iput-object p1, p0, Lcom/android/server/am/GPUMemoryReclaimer$VendorPlugin;->this$0:Lcom/android/server/am/GPUMemoryReclaimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2839
    iput-boolean p1, p0, Lcom/android/server/am/GPUMemoryReclaimer$VendorPlugin;->mIsInitialized:Z

    .line 2841
    iput-object p2, p0, Lcom/android/server/am/GPUMemoryReclaimer$VendorPlugin;->mPluginName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract calculateReclaimed([J)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract calculateResident([J)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getMeminfoRaw(I)[J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getPluginName()Ljava/lang/String;
    .registers 1

    .line 2845
    iget-object p0, p0, Lcom/android/server/am/GPUMemoryReclaimer$VendorPlugin;->mPluginName:Ljava/lang/String;

    return-object p0
.end method

.method public abstract getReclaimableTasks()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/GPUMemoryReclaimer$ReclaimableTask;",
            ">;"
        }
    .end annotation
.end method

.method public isInitialized()Z
    .registers 1

    .line 2847
    iget-boolean p0, p0, Lcom/android/server/am/GPUMemoryReclaimer$VendorPlugin;->mIsInitialized:Z

    return p0
.end method

.method public abstract swapIn(I)I
.end method

.method public abstract swapOut(I)I
.end method
