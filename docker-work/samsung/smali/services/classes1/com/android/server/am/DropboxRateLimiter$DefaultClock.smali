.class public Lcom/android/server/am/DropboxRateLimiter$DefaultClock;
.super Ljava/lang/Object;
.source "DropboxRateLimiter.java"

# interfaces
.implements Lcom/android/server/am/DropboxRateLimiter$Clock;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/DropboxRateLimiter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultClock"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/DropboxRateLimiter$DefaultClock-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/am/DropboxRateLimiter$DefaultClock;-><init>()V

    return-void
.end method


# virtual methods
.method public uptimeMillis()J
    .registers 3

    .line 170
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
