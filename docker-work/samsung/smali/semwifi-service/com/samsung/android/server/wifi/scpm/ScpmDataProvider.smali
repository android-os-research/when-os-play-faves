.class public interface abstract Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;
.super Ljava/lang/Object;
.source "ScpmDataProvider.java"


# virtual methods
.method public abstract getData(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getLastError()Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
