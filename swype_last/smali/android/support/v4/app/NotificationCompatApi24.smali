.class final Landroid/support/v4/app/NotificationCompatApi24;
.super Ljava/lang/Object;
.source "NotificationCompatApi24.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/NotificationCompatApi24$Builder;
    }
.end annotation


# direct methods
.method public static addMessagingStyle(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 16
    .param p0, "b"    # Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;
    .param p1, "userDisplayName"    # Ljava/lang/CharSequence;
    .param p2, "conversationTitle"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 150
    .local p3, "texts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .local p4, "timestamps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p5, "senders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .local p6, "dataMimeTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p7, "dataUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    new-instance v3, Landroid/app/Notification$MessagingStyle;

    invoke-direct {v3, p1}, Landroid/app/Notification$MessagingStyle;-><init>(Ljava/lang/CharSequence;)V

    .line 151
    invoke-virtual {v3, p2}, Landroid/app/Notification$MessagingStyle;->setConversationTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$MessagingStyle;

    move-result-object v2

    .line 152
    .local v2, "style":Landroid/app/Notification$MessagingStyle;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_46

    .line 153
    new-instance v1, Landroid/app/Notification$MessagingStyle$Message;

    .line 154
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-direct {v1, v3, v6, v7, v4}, Landroid/app/Notification$MessagingStyle$Message;-><init>(Ljava/lang/CharSequence;JLjava/lang/CharSequence;)V

    .line 155
    .local v1, "message":Landroid/app/Notification$MessagingStyle$Message;
    invoke-interface {p6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_40

    .line 156
    invoke-interface {p6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    invoke-virtual {v1, v3, v4}, Landroid/app/Notification$MessagingStyle$Message;->setData(Ljava/lang/String;Landroid/net/Uri;)Landroid/app/Notification$MessagingStyle$Message;

    .line 158
    :cond_40
    invoke-virtual {v2, v1}, Landroid/app/Notification$MessagingStyle;->addMessage(Landroid/app/Notification$MessagingStyle$Message;)Landroid/app/Notification$MessagingStyle;

    .line 152
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 160
    .end local v1    # "message":Landroid/app/Notification$MessagingStyle$Message;
    :cond_46
    invoke-interface {p0}, Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$MessagingStyle;->setBuilder(Landroid/app/Notification$Builder;)V

    .line 161
    return-void
.end method
