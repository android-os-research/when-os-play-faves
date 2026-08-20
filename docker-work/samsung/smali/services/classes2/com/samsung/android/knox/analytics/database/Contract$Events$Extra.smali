.class public Lcom/samsung/android/knox/analytics/database/Contract$Events$Extra;
.super Ljava/lang/Object;
.source "Contract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/analytics/database/Contract$Events;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Extra"
.end annotation


# static fields
.field public static final EVENTS_LIST:Ljava/lang/String; = "eventsList"

.field public static final INSERT_BULK_EVENTS:Ljava/lang/String; = "insertBulkEvents"

.field public static final LAST_EVENT_ID:Ljava/lang/String; = "lastEventId"

.field public static final MAX_CACHED_EVENTS:I = 0x64

.field public static final SINGLE_EVENT:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
