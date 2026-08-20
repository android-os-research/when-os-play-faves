.class public Lcom/android/server/net/watchlist/WatchlistConfig$XmlTags;
.super Ljava/lang/Object;
.source "WatchlistConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/watchlist/WatchlistConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XmlTags"
.end annotation


# static fields
.field public static final CRC32_DOMAIN:Ljava/lang/String; = "crc32-domain"

.field public static final CRC32_IP:Ljava/lang/String; = "crc32-ip"

.field public static final HASH:Ljava/lang/String; = "hash"

.field public static final SHA256_DOMAIN:Ljava/lang/String; = "sha256-domain"

.field public static final SHA256_IP:Ljava/lang/String; = "sha256-ip"

.field public static final WATCHLIST_CONFIG:Ljava/lang/String; = "watchlist-config"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
