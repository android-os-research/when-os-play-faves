.class public Lcom/android/server/firewall/StringFilter$StartsWithFilter;
.super Lcom/android/server/firewall/StringFilter;
.source "StringFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/firewall/StringFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StartsWithFilter"
.end annotation


# instance fields
.field public final mFilterValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/firewall/StringFilter$ValueProvider;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 173
    invoke-direct {p0, p1, v0}, Lcom/android/server/firewall/StringFilter;-><init>(Lcom/android/server/firewall/StringFilter$ValueProvider;Lcom/android/server/firewall/StringFilter-IA;)V

    .line 174
    iput-object p2, p0, Lcom/android/server/firewall/StringFilter$StartsWithFilter;->mFilterValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public matchesValue(Ljava/lang/String;)Z
    .registers 2

    if-eqz p1, :cond_c

    .line 179
    iget-object p0, p0, Lcom/android/server/firewall/StringFilter$StartsWithFilter;->mFilterValue:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method
