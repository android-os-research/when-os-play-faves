.class public Lcom/android/ims/RcsPresenceInfo$ServiceState;
.super Ljava/lang/Object;
.source "RcsPresenceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/RcsPresenceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServiceState"
.end annotation


# static fields
.field public static final blacklist OFFLINE:I = 0x0

.field public static final blacklist ONLINE:I = 0x1

.field public static final blacklist UNKNOWN:I = -0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
