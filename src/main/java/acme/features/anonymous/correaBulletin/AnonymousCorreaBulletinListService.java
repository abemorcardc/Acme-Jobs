
package acme.features.anonymous.correaBulletin;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import acme.entities.correaBulletins.CorreaBulletin;
import acme.framework.components.Model;
import acme.framework.components.Request;
import acme.framework.entities.Anonymous;
import acme.framework.services.AbstractListService;

@Service
public class AnonymousCorreaBulletinListService implements AbstractListService<Anonymous, CorreaBulletin> {

	//Internal state ---------------------------------------------------
	@Autowired
	AnonymousCorreaBulletinRepository repository;


	//AbstractListService<Anonymous,CorreaBulletin> interface ---------------------------------------------------

	@Override
	public boolean authorise(final Request<CorreaBulletin> request) {
		assert request != null;
		return true;
	}

	@Override
	public Collection<CorreaBulletin> findMany(final Request<CorreaBulletin> request) {
		assert request != null;
		Collection<CorreaBulletin> result;
		result = this.repository.findMany();
		return result;
	}

	@Override
	public void unbind(final Request<CorreaBulletin> request, final CorreaBulletin entity, final Model model) {
		assert request != null;
		assert entity != null;
		assert model != null;

		request.unbind(entity, model, "author", "text", "moment");
	}
}
