.class public final Lcom/android/server/timedetector/ConfigurationInternal$Builder;
.super Ljava/lang/Object;
.source "ConfigurationInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/timedetector/ConfigurationInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public mAutoDetectionEnabled:Z

.field public mUserConfigAllowed:Z

.field public final mUserId:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAutoDetectionEnabled(Lcom/android/server/timedetector/ConfigurationInternal$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/timedetector/ConfigurationInternal$Builder;->mAutoDetectionEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserConfigAllowed(Lcom/android/server/timedetector/ConfigurationInternal$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/timedetector/ConfigurationInternal$Builder;->mUserConfigAllowed:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserId(Lcom/android/server/timedetector/ConfigurationInternal$Builder;)I
    .registers 1

    iget p0, p0, Lcom/android/server/timedetector/ConfigurationInternal$Builder;->mUserId:I

    return p0
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput p1, p0, Lcom/android/server/timedetector/ConfigurationInternal$Builder;->mUserId:I

    return-void
.end method


# virtual methods
.method public build()Lcom/android/server/timedetector/ConfigurationInternal;
    .registers 3

    .line 119
    new-instance v0, Lcom/android/server/timedetector/ConfigurationInternal;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/timedetector/ConfigurationInternal;-><init>(Lcom/android/server/timedetector/ConfigurationInternal$Builder;Lcom/android/server/timedetector/ConfigurationInternal-IA;)V

    return-object v0
.end method

.method public setAutoDetectionEnabled(Z)Lcom/android/server/timedetector/ConfigurationInternal$Builder;
    .registers 2

    .line 114
    iput-boolean p1, p0, Lcom/android/server/timedetector/ConfigurationInternal$Builder;->mAutoDetectionEnabled:Z

    return-object p0
.end method

.method public setUserConfigAllowed(Z)Lcom/android/server/timedetector/ConfigurationInternal$Builder;
    .registers 2

    .line 109
    iput-boolean p1, p0, Lcom/android/server/timedetector/ConfigurationInternal$Builder;->mUserConfigAllowed:Z

    return-object p0
.end method
