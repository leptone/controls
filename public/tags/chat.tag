<chat>
	<ul>
		<li each={ stream }>
			<div>{ message }</div>
			<span>{ author }</span>
			<span>{ sent }</span>
		</li>
	</ul>
	<form onsubmit= { this.sendMessage }>
		<label for='message'>
		<input type='text' name='message' id='message'>
		<label for='author'>
		<input type='text' name='author' id='author'>
		<input type='submit'>	
		<script>
			sendMessage(e) {
				console.log('Send Message')
				let newMessage = this.createMessage(this.author.value, this.message.value)
				this.author.value = ''
				this.message.value = ''
				this.stream.push(newMessage)
			}
			createMessage(author, message) {
				return { author: author, sent: Date.now(), message: message }
			}
		</script>
	</form>

	<script>
		this.stream = [
			{ author: 'Dan', sent: '5/19', message: 'What does everyone think' },
			{ author: 'Steve', sent: '5/19', message: 'I\'m diggin it' },
			{ author: 'Chris', sent: '5/20', message: 'I like this soing' },
			{ author: 'Dan', sent: '5/21', message: 'Another message' },
		]
		
	</script>
	<style scoped>
		:scope {}
		li {
			text-align: left;
		}
	</style>
</chat>
