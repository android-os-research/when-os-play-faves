.class public interface abstract Lcom/android/server/ssrm/common/IEReceiver;
.super Ljava/lang/Object;
.source "IEReceiver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Lcom/android/server/ssrm/common/IEvent;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getGeneratorIdentifier()Ljava/lang/String;
.end method

.method public abstract onEventOccurred(Lcom/android/server/ssrm/common/IEvent;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation
.end method
