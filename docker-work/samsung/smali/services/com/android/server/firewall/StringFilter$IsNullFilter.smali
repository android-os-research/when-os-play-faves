.class public Lcom/android/server/firewall/StringFilter$IsNullFilter;
.super Lcom/android/server/firewall/StringFilter;
.source "StringFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/firewall/StringFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IsNullFilter"
.end annotation


# instance fields
.field public final mIsNull:Z


# direct methods
.method public constructor <init>(Lcom/android/server/firewall/StringFilter$ValueProvider;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 215
    invoke-direct {p0, p1, v0}, Lcom/android/server/firewall/StringFilter;-><init>(Lcom/android/server/firewall/StringFilter$ValueProvider;Lcom/android/server/firewall/StringFilter-IA;)V

    .line 216
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/firewall/StringFilter$IsNullFilter;->mIsNull:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/firewall/StringFilter$ValueProvider;Z)V
    .registers 4

    const/4 v0, 0x0

    .line 220
    invoke-direct {p0, p1, v0}, Lcom/android/server/firewall/StringFilter;-><init>(Lcom/android/server/firewall/StringFilter$ValueProvider;Lcom/android/server/firewall/StringFilter-IA;)V

    .line 221
    iput-boolean p2, p0, Lcom/android/server/firewall/StringFilter$IsNullFilter;->mIsNull:Z

    return-void
.end method


# virtual methods
.method public matchesValue(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_6

    move p1, v0

    goto :goto_7

    :cond_6
    move p1, v1

    .line 226
    :goto_7
    iget-boolean p0, p0, Lcom/android/server/firewall/StringFilter$IsNullFilter;->mIsNull:Z

    if-ne p1, p0, :cond_c

    goto :goto_d

    :cond_c
    move v0, v1

    :goto_d
    return v0
.end method
