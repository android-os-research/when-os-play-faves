.class public Lcom/android/server/powerstats/PowerStatsLogger$2;
.super Ljava/lang/Object;
.source "PowerStatsLogger.java"

# interfaces
.implements Lcom/android/server/powerstats/PowerStatsDataStorage$DataElementReadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/powerstats/PowerStatsLogger;->writeModelDataToFile(Ljava/io/FileDescriptor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/powerstats/PowerStatsLogger;

.field public final synthetic val$pos:Landroid/util/proto/ProtoOutputStream;


# direct methods
.method public constructor <init>(Lcom/android/server/powerstats/PowerStatsLogger;Landroid/util/proto/ProtoOutputStream;)V
    .registers 3

    .line 189
    iput-object p1, p0, Lcom/android/server/powerstats/PowerStatsLogger$2;->this$0:Lcom/android/server/powerstats/PowerStatsLogger;

    iput-object p2, p0, Lcom/android/server/powerstats/PowerStatsLogger$2;->val$pos:Landroid/util/proto/ProtoOutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReadDataElement([B)V
    .registers 4

    .line 193
    :try_start_0
    new-instance v0, Landroid/util/proto/ProtoInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    .line 199
    invoke-static {p1}, Lcom/android/server/powerstats/ProtoStreamUtils$EnergyConsumerResultUtils;->unpackProtoMessage([B)[Landroid/hardware/power/stats/EnergyConsumerResult;

    move-result-object p1

    .line 200
    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsLogger$2;->val$pos:Landroid/util/proto/ProtoOutputStream;

    const/4 v0, 0x1

    invoke-static {p1, p0, v0}, Lcom/android/server/powerstats/ProtoStreamUtils$EnergyConsumerResultUtils;->packProtoMessage([Landroid/hardware/power/stats/EnergyConsumerResult;Landroid/util/proto/ProtoOutputStream;Z)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_14} :catch_15

    goto :goto_1e

    .line 203
    :catch_15
    invoke-static {}, Lcom/android/server/powerstats/PowerStatsLogger;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Failed to write energy model data to incident report."

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1e
    return-void
.end method
