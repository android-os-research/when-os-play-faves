.class public Lcom/android/service/ims/presence/PresencePublication$PublishType;
.super Ljava/lang/Object;
.source "PresencePublication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/service/ims/presence/PresencePublication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PublishType"
.end annotation


# static fields
.field public static final blacklist PRES_PUBLISH_TRIGGER_CACHED_TRIGGER:I = 0x2

.field public static final blacklist PRES_PUBLISH_TRIGGER_DATA_CHANGED:I = 0x0

.field public static final blacklist PRES_PUBLISH_TRIGGER_DEFAULT_SUB_CHANGED:I = 0x6

.field public static final blacklist PRES_PUBLISH_TRIGGER_FEATURE_AVAILABILITY_CHANGED:I = 0x5

.field public static final blacklist PRES_PUBLISH_TRIGGER_RETRY:I = 0x4

.field public static final blacklist PRES_PUBLISH_TRIGGER_TTY_ENABLE_STATUS:I = 0x3

.field public static final blacklist PRES_PUBLISH_TRIGGER_VTCALL_CHANGED:I = 0x1


# instance fields
.field final synthetic blacklist this$0:Lcom/android/service/ims/presence/PresencePublication;


# direct methods
.method public constructor blacklist <init>(Lcom/android/service/ims/presence/PresencePublication;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/service/ims/presence/PresencePublication;

    .line 184
    iput-object p1, p0, Lcom/android/service/ims/presence/PresencePublication$PublishType;->this$0:Lcom/android/service/ims/presence/PresencePublication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
