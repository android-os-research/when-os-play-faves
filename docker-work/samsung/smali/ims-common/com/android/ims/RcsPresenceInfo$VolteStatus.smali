.class public Lcom/android/ims/RcsPresenceInfo$VolteStatus;
.super Ljava/lang/Object;
.source "RcsPresenceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/RcsPresenceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VolteStatus"
.end annotation


# static fields
.field public static final blacklist VOLTE_DISABLED:I = 0x0

.field public static final blacklist VOLTE_ENABLED:I = 0x1

.field public static final blacklist VOLTE_UNKNOWN:I = -0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
