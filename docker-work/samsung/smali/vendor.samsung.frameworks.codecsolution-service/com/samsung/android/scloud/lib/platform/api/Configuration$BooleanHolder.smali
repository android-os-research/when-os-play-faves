.class Lcom/samsung/android/scloud/lib/platform/api/Configuration$BooleanHolder;
.super Ljava/lang/Object;
.source "Configuration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/scloud/lib/platform/api/Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BooleanHolder"
.end annotation


# instance fields
.field value:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/scloud/lib/platform/api/Configuration$BooleanHolder;->value:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/scloud/lib/platform/api/Configuration$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/samsung/android/scloud/lib/platform/api/Configuration$1;

    .line 122
    invoke-direct {p0}, Lcom/samsung/android/scloud/lib/platform/api/Configuration$BooleanHolder;-><init>()V

    return-void
.end method
