.class public Lcom/sec/ims/extensions/Extensions$Build;
.super Ljava/lang/Object;
.source "Extensions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/extensions/Extensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Build"
.end annotation


# static fields
.field public static final IS_DEBUGGABLE:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 88
    const-class v0, Landroid/os/Build;

    const-string v1, "IS_DEBUGGABLE"

    invoke-static {v1, v0}, Lcom/sec/ims/extensions/ReflectionUtils;->getValueOf(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/sec/ims/extensions/Extensions$Build;->IS_DEBUGGABLE:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
