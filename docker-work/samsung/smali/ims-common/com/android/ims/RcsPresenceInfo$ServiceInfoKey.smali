.class public Lcom/android/ims/RcsPresenceInfo$ServiceInfoKey;
.super Ljava/lang/Object;
.source "RcsPresenceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/RcsPresenceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServiceInfoKey"
.end annotation


# static fields
.field public static final blacklist SERVICE_CONTACT:Ljava/lang/String; = "service_contact"

.field public static final blacklist SERVICE_TYPE:Ljava/lang/String; = "service_type"

.field public static final blacklist STATE:Ljava/lang/String; = "state"

.field public static final blacklist TIMESTAMP:Ljava/lang/String; = "timestamp"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
