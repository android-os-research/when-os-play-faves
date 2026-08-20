.class public interface abstract Lcom/android/ims/rcs/uce/request/UceRequest;
.super Ljava/lang/Object;
.source "UceRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/rcs/uce/request/UceRequest$UceRequestType;
    }
.end annotation


# static fields
.field public static final blacklist REQUEST_TYPE_AVAILABILITY:I = 0x2

.field public static final blacklist REQUEST_TYPE_CAPABILITY:I = 0x1


# virtual methods
.method public abstract blacklist executeRequest()V
.end method

.method public abstract blacklist getRequestCoordinatorId()J
.end method

.method public abstract blacklist getTaskId()J
.end method

.method public abstract blacklist onFinish()V
.end method

.method public abstract blacklist setContactUri(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract blacklist setRequestCoordinatorId(J)V
.end method
