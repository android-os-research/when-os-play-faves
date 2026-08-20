.class public Lcom/android/server/people/prediction/ConversationData;
.super Ljava/lang/Object;
.source "ConversationData.java"


# instance fields
.field public final mConversationInfo:Lcom/android/server/people/data/ConversationInfo;

.field public final mEventHistory:Lcom/android/server/people/data/EventHistory;

.field public final mPackageName:Ljava/lang/String;

.field public final mUserId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/android/server/people/data/ConversationInfo;Lcom/android/server/people/data/EventHistory;)V
    .registers 5

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/server/people/prediction/ConversationData;->mPackageName:Ljava/lang/String;

    .line 35
    iput p2, p0, Lcom/android/server/people/prediction/ConversationData;->mUserId:I

    .line 36
    iput-object p3, p0, Lcom/android/server/people/prediction/ConversationData;->mConversationInfo:Lcom/android/server/people/data/ConversationInfo;

    .line 37
    iput-object p4, p0, Lcom/android/server/people/prediction/ConversationData;->mEventHistory:Lcom/android/server/people/data/EventHistory;

    return-void
.end method


# virtual methods
.method public getConversationInfo()Lcom/android/server/people/data/ConversationInfo;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/android/server/people/prediction/ConversationData;->mConversationInfo:Lcom/android/server/people/data/ConversationInfo;

    return-object p0
.end method

.method public getEventHistory()Lcom/android/server/people/data/EventHistory;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/android/server/people/prediction/ConversationData;->mEventHistory:Lcom/android/server/people/data/EventHistory;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/android/server/people/prediction/ConversationData;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getUserId()I
    .registers 1

    .line 45
    iget p0, p0, Lcom/android/server/people/prediction/ConversationData;->mUserId:I

    return p0
.end method
