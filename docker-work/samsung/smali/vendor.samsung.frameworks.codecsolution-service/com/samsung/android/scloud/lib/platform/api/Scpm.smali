.class public Lcom/samsung/android/scloud/lib/platform/api/Scpm;
.super Ljava/lang/Object;
.source "Scpm.java"


# instance fields
.field public configuration:Lcom/samsung/android/scloud/lib/platform/api/Configuration;

.field public registration:Lcom/samsung/android/scloud/lib/platform/api/Registration;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/samsung/android/scloud/lib/platform/api/Configuration;

    invoke-direct {v0, p1}, Lcom/samsung/android/scloud/lib/platform/api/Configuration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/scloud/lib/platform/api/Scpm;->configuration:Lcom/samsung/android/scloud/lib/platform/api/Configuration;

    .line 28
    new-instance v0, Lcom/samsung/android/scloud/lib/platform/api/Registration;

    invoke-direct {v0, p1}, Lcom/samsung/android/scloud/lib/platform/api/Registration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/scloud/lib/platform/api/Scpm;->registration:Lcom/samsung/android/scloud/lib/platform/api/Registration;

    .line 29
    return-void
.end method
