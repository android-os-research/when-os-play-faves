.class public Lcom/samsung/android/server/audio/DvfsHelper$DefaultDvfsManagerFactory;
.super Ljava/lang/Object;
.source "DvfsHelper.java"

# interfaces
.implements Lcom/samsung/android/server/audio/DvfsHelper$DvfsManagerFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/audio/DvfsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultDvfsManagerFactory"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;
    .registers 3

    .line 55
    invoke-static {p1, p2}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object p0

    return-object p0
.end method
