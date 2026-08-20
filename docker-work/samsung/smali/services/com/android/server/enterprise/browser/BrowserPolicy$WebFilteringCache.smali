.class public Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;
.super Ljava/lang/Object;
.source "BrowserPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/browser/BrowserPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WebFilteringCache"
.end annotation


# instance fields
.field public final mContainerId:I

.field public mIsUrlBlacklistUpdated:Z

.field public mIsUrlFilterReportUpdated:Z

.field public mIsUrlFilterStateUpdated:Z

.field public mUrlBlacklistAllAdmin:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mUrlFilterReportState:Z

.field public mUrlFilterStateCache:Z


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 141
    iput-object v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mUrlBlacklistAllAdmin:Ljava/util/List;

    const/4 v0, 0x0

    .line 142
    iput-boolean v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mIsUrlBlacklistUpdated:Z

    .line 143
    iput-boolean v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mUrlFilterStateCache:Z

    .line 144
    iput-boolean v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mIsUrlFilterStateUpdated:Z

    .line 145
    iput-boolean v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mUrlFilterReportState:Z

    .line 146
    iput-boolean v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mIsUrlFilterReportUpdated:Z

    .line 149
    iput p1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mContainerId:I

    .line 150
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mUrlBlacklistAllAdmin:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 154
    iget-object v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mUrlBlacklistAllAdmin:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 155
    iput-boolean v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mIsUrlBlacklistUpdated:Z

    .line 156
    iput-boolean v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mIsUrlFilterStateUpdated:Z

    .line 157
    iput-boolean v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mIsUrlFilterReportUpdated:Z

    return-void
.end method
