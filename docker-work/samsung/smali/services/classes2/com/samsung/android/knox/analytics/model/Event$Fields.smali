.class public Lcom/samsung/android/knox/analytics/model/Event$Fields;
.super Ljava/lang/Object;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/analytics/model/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Fields"
.end annotation


# static fields
.field public static final BULK:Ljava/lang/String; = "bulk"

.field public static final DATA:Ljava/lang/String; = "data"

.field public static final ID:Ljava/lang/String; = "id"

.field public static final VID:Ljava/lang/String; = "vid"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
