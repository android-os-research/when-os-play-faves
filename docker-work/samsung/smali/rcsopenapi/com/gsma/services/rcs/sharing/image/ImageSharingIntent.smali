.class public Lcom/gsma/services/rcs/sharing/image/ImageSharingIntent;
.super Ljava/lang/Object;
.source "ImageSharingIntent.java"


# static fields
.field public static final ACTION_NEW_INVITATION:Ljava/lang/String; = "com.gsma.services.rcs.sharing.image.action.NEW_IMAGE_SHARING"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_NEW_INVITATION_ISH:Ljava/lang/String; = "com.gsma.services.rcs.ish.action.NEW_IMAGE_SHARING"

.field public static final EXTRA_SHARING_ID:Ljava/lang/String; = "sharingId"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
